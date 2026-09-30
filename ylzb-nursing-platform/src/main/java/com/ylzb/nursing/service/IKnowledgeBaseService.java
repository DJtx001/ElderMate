package com.ylzb.nursing.service;

import java.util.List;
import com.ylzb.nursing.domain.KnowledgeBase;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 知识库主表Service接口
 * 
 * @author djh
 * @date 2026-09-30
 */
public interface IKnowledgeBaseService extends IService<KnowledgeBase>
{
    /**
     * 查询知识库主表
     * 
     * @param id 知识库主表主键
     * @return 知识库主表
     */
    public KnowledgeBase selectKnowledgeBaseById(Long id);

    /**
     * 查询知识库主表列表
     * 
     * @param knowledgeBase 知识库主表
     * @return 知识库主表集合
     */
    public List<KnowledgeBase> selectKnowledgeBaseList(KnowledgeBase knowledgeBase);

    /**
     * 新增知识库主表
     * 
     * @param knowledgeBase 知识库主表
     * @return 结果
     */
    public int insertKnowledgeBase(KnowledgeBase knowledgeBase);

    /**
     * 修改知识库主表
     * 
     * @param knowledgeBase 知识库主表
     * @return 结果
     */
    public int updateKnowledgeBase(KnowledgeBase knowledgeBase);

    /**
     * 批量删除知识库主表
     * 
     * @param ids 需要删除的知识库主表主键集合
     * @return 结果
     */
    public int deleteKnowledgeBaseByIds(Long[] ids);

    /**
     * 删除知识库主表信息
     * 
     * @param id 知识库主表主键
     * @return 结果
     */
    public int deleteKnowledgeBaseById(Long id);
}
