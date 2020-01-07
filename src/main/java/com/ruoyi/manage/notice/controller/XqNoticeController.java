package com.ruoyi.manage.notice.controller;

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
import com.ruoyi.manage.notice.domain.XqNotice;
import com.ruoyi.manage.notice.service.IXqNoticeService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 小区公告Controller
 * 
 * @author yanbs
 * @date 2019-12-09
 */
@Controller
@RequestMapping("/manage/notice")
public class XqNoticeController extends BaseController
{
    private String prefix = "manage/notice";

    @Autowired
    private IXqNoticeService xqNoticeService;

    @RequiresPermissions("manage:notice:view")
    @GetMapping()
    public String notice()
    {
        return prefix + "/notice";
    }

    /**
     * 查询小区公告列表
     */
    @RequiresPermissions("manage:notice:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(XqNotice xqNotice)
    {
        startPage();
        List<XqNotice> list = xqNoticeService.selectXqNoticeList(xqNotice);
        return getDataTable(list);
    }

    /**
     * 导出小区公告列表
     */
    @RequiresPermissions("manage:notice:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(XqNotice xqNotice)
    {
        List<XqNotice> list = xqNoticeService.selectXqNoticeList(xqNotice);
        ExcelUtil<XqNotice> util = new ExcelUtil<XqNotice>(XqNotice.class);
        return util.exportExcel(list, "notice");
    }

    /**
     * 新增小区公告
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	Dept dept = new Dept();
    	mmap.put("dept", dept);
        return prefix + "/add";
    }

    /**
     * 新增保存小区公告
     */
    @RequiresPermissions("manage:notice:add")
    @Log(title = "小区公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(XqNotice xqNotice)
    {
    	xqNotice.setCreateBy(this.getSysUser().getLoginName());
        return toAjax(xqNoticeService.insertXqNotice(xqNotice));
    }

    /**
     * 修改小区公告
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        XqNotice xqNotice = xqNoticeService.selectXqNoticeById(id);
        mmap.put("xqNotice", xqNotice);
        Dept dept = new Dept();
    	mmap.put("dept", dept);
        return prefix + "/edit";
    }

    /**
     * 修改保存小区公告
     */
    @RequiresPermissions("manage:notice:edit")
    @Log(title = "小区公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(XqNotice xqNotice)
    {
    	xqNotice.setUpdateBy(this.getSysUser().getLoginName());
        return toAjax(xqNoticeService.updateXqNotice(xqNotice));
    }

    /**
     * 删除小区公告
     */
    @RequiresPermissions("manage:notice:remove")
    @Log(title = "小区公告", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(xqNoticeService.deleteXqNoticeByIds(ids));
    }
}
