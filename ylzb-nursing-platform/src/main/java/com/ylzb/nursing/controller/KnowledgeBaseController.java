package com.ylzb.nursing.controller;

import java.util.List;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ylzb.common.annotation.Log;
import com.ylzb.common.core.controller.BaseController;
import com.ylzb.common.core.domain.AjaxResult;
import com.ylzb.common.enums.BusinessType;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import com.ylzb.nursing.domain.KnowledgeBase;
import com.ylzb.nursing.service.IKnowledgeBaseService;
import com.ylzb.common.utils.poi.ExcelUtil;
import com.ylzb.common.core.page.TableDataInfo;
import com.ylzb.common.config.RuoYiConfig;
import com.ylzb.framework.config.ServerConfig;
import com.ylzb.common.utils.file.FileUploadUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 * 知识库主表Controller
 * 
 * @author djh
 * @date 2026-09-30
 */
@RestController
@RequestMapping("/nursing/knowledgeBase")
@Tag(name = "知识库主表相关接口")
public class KnowledgeBaseController extends BaseController
{
    @Autowired
    private IKnowledgeBaseService knowledgeBaseService;

    @Autowired
    private ServerConfig serverConfig;

    /**
     * 上传知识库文档
     */
    @PostMapping("/upload")
    public AjaxResult uploadFile(MultipartFile file) throws Exception
    {
        try
        {
            // 上传到本地 profile 目录，返回可访问 URL（与 readDocument 的本地路径解析配套）
            String filePath = RuoYiConfig.getUploadPath();
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;

            AjaxResult ajax = AjaxResult.success();
            ajax.put("url", url);
            ajax.put("originalFilename", file.getOriginalFilename());
            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }

    /**
     * 查询知识库主表列表
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:list')")
    @GetMapping("/list")
    @Operation(summary = "查询知识库主表列表")
    public TableDataInfo list(KnowledgeBase knowledgeBase)
    {
        startPage();
        List<KnowledgeBase> list = knowledgeBaseService.selectKnowledgeBaseList(knowledgeBase);
        return getDataTable(list);
    }

    /**
     * 导出知识库主表列表
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:export')")
    @Log(title = "知识库主表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @Operation(summary = "导出知识库主表列表")
    public void export(HttpServletResponse response, KnowledgeBase knowledgeBase)
    {
        List<KnowledgeBase> list = knowledgeBaseService.selectKnowledgeBaseList(knowledgeBase);
        ExcelUtil<KnowledgeBase> util = new ExcelUtil<KnowledgeBase>(KnowledgeBase.class);
        util.exportExcel(response, list, "知识库主表数据");
    }

    /**
     * 获取知识库主表详细信息
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:query')")
    @GetMapping(value = "/{id}")
    @Operation(summary = "获取知识库主表详细信息")
    public AjaxResult getInfo(@Schema(name = "知识库主表ID", requiredMode = Schema.RequiredMode.REQUIRED)
            @PathVariable("id") Long id)
    {
        return success(knowledgeBaseService.selectKnowledgeBaseById(id));
    }

    /**
     * 新增知识库主表
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:add')")
    @Log(title = "知识库主表", businessType = BusinessType.INSERT)
    @PostMapping
    @Operation(summary = "新增知识库主表")
    public AjaxResult add(@RequestBody KnowledgeBase knowledgeBase)
    {
        return toAjax(knowledgeBaseService.insertKnowledgeBase(knowledgeBase));
    }

    /**
     * 修改知识库主表
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:edit')")
    @Log(title = "知识库主表", businessType = BusinessType.UPDATE)
    @PutMapping
    @Operation(summary = "修改知识库主表")
    public AjaxResult edit(@RequestBody KnowledgeBase knowledgeBase)
    {
        return toAjax(knowledgeBaseService.updateKnowledgeBase(knowledgeBase));
    }

    /**
     * 删除知识库
     */
    @PreAuthorize("@ss.hasPermi('nursing:knowledgeBase:remove')")
    @Log(title = "知识库", businessType = BusinessType.DELETE)
    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable Long id)
    {
        return toAjax(knowledgeBaseService.deleteKnowledgeBaseById(id));
    }
}
