package com.ylzb.nursing.service.impl;

import java.util.List;

import cn.hutool.json.JSONUtil;
import com.ylzb.common.config.RuoYiConfig;
import com.ylzb.common.exception.base.BaseException;
import com.ylzb.common.utils.DateUtils;
import com.ylzb.common.utils.StringUtils;
import org.springframework.ai.document.Document;
import org.springframework.ai.reader.tika.TikaDocumentReader;
import org.springframework.ai.transformer.splitter.TextSplitter;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import com.ylzb.nursing.mapper.KnowledgeBaseMapper;
import com.ylzb.nursing.domain.KnowledgeBase;
import com.ylzb.nursing.service.IKnowledgeBaseService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import java.util.Arrays;

/**
 * 知识库主表Service业务层处理
 * 
 * @author djh
 * @date 2026-09-30
 */
@Service
public class KnowledgeBaseServiceImpl extends ServiceImpl<KnowledgeBaseMapper, KnowledgeBase> implements IKnowledgeBaseService
{
    @Autowired
    private KnowledgeBaseMapper knowledgeBaseMapper;
    @Autowired
    private TextSplitter textSplitter;

    @Autowired
    private VectorStore vectorStore;


    /**
     * 查询知识库主表
     * 
     * @param id 知识库主表主键
     * @return 知识库主表
     */
    @Override
    public KnowledgeBase selectKnowledgeBaseById(Long id)
    {
        return getById(id);
    }

    /**
     * 查询知识库主表列表
     * 
     * @param knowledgeBase 知识库主表
     * @return 知识库主表
     */
    @Override
    public List<KnowledgeBase> selectKnowledgeBaseList(KnowledgeBase knowledgeBase)
    {
        return knowledgeBaseMapper.selectKnowledgeBaseList(knowledgeBase);
    }

    /**
     * 新增知识库主表
     * 
     * @param knowledgeBase 知识库主表
     * @return 结果
     */
    @Override
    public int insertKnowledgeBase(KnowledgeBase knowledgeBase)
    {
//        1.上传文档到服务器或者阿里云
//        2，从其中里面下载文档
        List <Document> documents = readDocument(knowledgeBase.getDocumentUrl());
        if(documents == null || documents.isEmpty()){
            throw new BaseException("文档解析结果为空，请确认上传的是有效文档内容");
        }
//        3.将文档切分chunk
        List<Document> documentList = textSplitter.split(documents);

        //获取所有的文档的id
        List<String> documentIds = documentList.stream().map(Document::getId).toList();

        // 分批次存储到向量数据库
        int batchSize = 10;
        for (int i = 0; i < documentList.size(); i += batchSize) {
            List<Document> batch = documentList.subList(i, Math.min(i + batchSize, documentList.size()));
            // 3.写入向量库
            vectorStore.add(batch);
            System.out.println("已添加批次: " + (i / batchSize + 1) + ", 数量: " + batch.size());
        }

        // 保存知识库文档到数据库（文档chunk的id已存进remark，供删除时清理向量库用）
        knowledgeBase.setCreateTime(DateUtils.getNowDate());
        knowledgeBase.setRemark(JSONUtil.toJsonStr(documentIds));
        return knowledgeBaseMapper.insertKnowledgeBase(knowledgeBase);
    }

    /**
     * 修改知识库主表
     * 
     * @param knowledgeBase 知识库主表
     * @return 结果
     */
    @Override
    public int updateKnowledgeBase(KnowledgeBase knowledgeBase)
    {
        return updateById(knowledgeBase)? 1 : 0;
    }

    /**
     * 批量删除知识库主表
     *
     * @param ids 需要删除的知识库主表主键
     * @return 结果
     */
    @Override
    public int deleteKnowledgeBaseByIds(Long[] ids)
    {
        // 1.删除向量库中的chunk（remark里存的是入库时的chunk id）
        List<KnowledgeBase> knowledgeBases = listByIds(Arrays.asList(ids));
        for (KnowledgeBase knowledgeBase : knowledgeBases) {
            if (StringUtils.isNotEmpty(knowledgeBase.getRemark())) {
                vectorStore.delete(JSONUtil.toList(knowledgeBase.getRemark(), String.class));
            }
        }

        // 2.删除数据库记录
        return removeByIds(Arrays.asList(ids))? 1 : 0;
    }

    /**
     * 删除知识库主信息
     *
     * @param id 知识库主主键
     * @return 结果
     */
    @Override
    public int deleteKnowledgeBaseById(Long id)
    {
        //查数据
        KnowledgeBase knowledgeBase = selectKnowledgeBaseById(id);
        if(null == knowledgeBase){
            throw new BaseException("知识库不存在");
        }
        // 删除向量中的数据（remark为空说明从未成功入库，跳过）
        String idsStr = knowledgeBase.getRemark();
        if (StringUtils.isNotEmpty(idsStr)) {
            List<String> ids = JSONUtil.toList(idsStr, String.class);
            vectorStore.delete(ids);
        }

        // 删除mysql的数据
        return knowledgeBaseMapper.deleteKnowledgeBaseById(id);
    }

    /**
     * 根据文档URL从本地磁盘读取并解析文档
     *
     * @param documentUrl 文档访问URL，如 http://localhost:8080/profile/upload/2026/09/30/xxx.pdf
     * @return 解析后的文档列表
     */
    private List<Document> readDocument(String documentUrl) {
        // 去掉 http://主机:端口/profile 前缀，得到 /upload/2026/09/30/xxx.pdf
        String relativePath = documentUrl.substring(
                documentUrl.indexOf("/profile") + "/profile".length());
        // 拼接本地绝对路径: D:/ruoyi/uploadPath/upload/2026/09/30/xxx.pdf
        Resource resource = new FileSystemResource(RuoYiConfig.getProfile() + relativePath);
        // Tika 解析 pdf/word/txt，返回带全文内容的 Document 列表
        return new TikaDocumentReader(resource).get();
    }
}
