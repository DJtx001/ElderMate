package com.ylzb.nursing.domain;

import com.ylzb.common.annotation.Excel;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import com.ylzb.common.core.domain.BaseEntity;

/**
 * 知识库主表对象 knowledge_base
 * 
 * @author djh
 * @date 2026-09-30
 */
@Data
@Schema(description = "知识库主表对象")
public class KnowledgeBase extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    @Schema(title = "主键id")
    private Long id;

    /** 知识标题 */
    @Schema(title = "知识标题")
    @Excel(name = "知识标题")
    private String title;

    /** 分类 */
    @Schema(title = "分类")
    @Excel(name = "分类")
    private Integer category;

    /** 标签数组 */
    @Schema(title = "标签数组")
    @Excel(name = "标签数组")
    private String tags;

    /** 状态 0-禁用  1-启用 */
    @Schema(title = "状态 0-禁用  1-启用")
    @Excel(name = "状态 0-禁用  1-启用")
    private Integer status;

    /** 优先级(1-5) */
    @Schema(title = "优先级(1-5)")
    @Excel(name = "优先级(1-5)")
    private Integer priority;

    /** 文档访问URL */
    @Schema(title = "文档访问URL")
    @Excel(name = "文档访问URL")
    private String documentUrl;

}
