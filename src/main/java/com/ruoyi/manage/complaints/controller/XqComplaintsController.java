package com.ruoyi.manage.complaints.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.manage.complaints.domain.XqComplaints;
import com.ruoyi.manage.complaints.service.IXqComplaintsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 投诉/建议管理Controller
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
@Controller
@RequestMapping("/manage/complaints")
public class XqComplaintsController extends BaseController
{
    private String prefix = "manage/complaints";

    @Autowired
    private IXqComplaintsService xqComplaintsService;

    @RequiresPermissions("manage:complaints:view")
    @GetMapping()
    public String complaints()
    {
        return prefix + "/complaints";
    }

    /**
     * 查询投诉/建议管理列表
     */
    @RequiresPermissions("manage:complaints:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(XqComplaints xqComplaints)
    {
        startPage();
        List<XqComplaints> list = xqComplaintsService.selectXqComplaintsList(xqComplaints);
        return getDataTable(list);
    }

    /**
     * 导出投诉/建议管理列表
     */
    @RequiresPermissions("manage:complaints:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(XqComplaints xqComplaints)
    {
        List<XqComplaints> list = xqComplaintsService.selectXqComplaintsList(xqComplaints);
        ExcelUtil<XqComplaints> util = new ExcelUtil<XqComplaints>(XqComplaints.class);
        return util.exportExcel(list, "complaints");
    }

    /**
     * 新增投诉/建议管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存投诉/建议管理
     */
    @RequiresPermissions("manage:complaints:add")
    @Log(title = "投诉/建议管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(XqComplaints xqComplaints)
    {
        return toAjax(xqComplaintsService.insertXqComplaints(xqComplaints));
    }

    /**
     * 修改投诉/建议管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        XqComplaints xqComplaints = xqComplaintsService.selectXqComplaintsById(id);
        mmap.put("xqComplaints", xqComplaints);
        return prefix + "/edit";
    }

    /**
     * 修改保存投诉/建议管理
     */
    @RequiresPermissions("manage:complaints:edit")
    @Log(title = "投诉/建议管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(XqComplaints xqComplaints)
    {
        return toAjax(xqComplaintsService.updateXqComplaints(xqComplaints));
    }

    /**
     * 删除投诉/建议管理
     */
    @RequiresPermissions("manage:complaints:remove")
    @Log(title = "投诉/建议管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(xqComplaintsService.deleteXqComplaintsByIds(ids));
    }
}
