package com.ylzb.nursing.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ylzb.nursing.domain.KnowledgeBase;

/**
 * 知识库主表Mapper接口
 * 
 * @author djh
 * @date 2026-09-30
 */
@Mapper
public interface KnowledgeBaseMapper extends BaseMapper<KnowledgeBase>
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
     * 删除知识库主表
     * 
     * @param id 知识库主表主键
     * @return 结果
     */
    public int deleteKnowledgeBaseById(Long id);

    /**
     * 批量删除知识库主表
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKnowledgeBaseByIds(Long[] ids);
}
