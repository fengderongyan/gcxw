package com.ruoyi.manage.jssb.controller;

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
import com.ruoyi.manage.jssb.domain.TXqJssb;
import com.ruoyi.manage.jssb.service.ITXqJssbService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 急事速办Controller
 * 
 * @author zhangchengcai
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/manage/jssb")
public class TXqJssbController extends BaseController
{
    private String prefix = "manage/jssb";

    @Autowired
    private ITXqJssbService tXqJssbService;

    @RequiresPermissions("manage:jssb:view")
    @GetMapping()
    public String jssb()
    {
        return prefix + "/jssb";
    }

    /**
     * 查询急事速办列表
     */
    @RequiresPermissions("manage:jssb:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqJssb tXqJssb)
    {
        startPage();
        List<TXqJssb> list = tXqJssbService.selectTXqJssbList(tXqJssb);
        return getDataTable(list);
    }

    /**
     * 导出急事速办列表
     */
    @RequiresPermissions("manage:jssb:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqJssb tXqJssb)
    {
        List<TXqJssb> list = tXqJssbService.selectTXqJssbList(tXqJssb);
        ExcelUtil<TXqJssb> util = new ExcelUtil<TXqJssb>(TXqJssb.class);
        return util.exportExcel(list, "jssb");
    }

    /**
     * 新增急事速办
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	Dept dept = new Dept();
    	mmap.put("dept", dept);
        return prefix + "/add";
    }

    /**
     * 新增保存急事速办
     */
    @RequiresPermissions("manage:jssb:add")
    @Log(title = "急事速办", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqJssb tXqJssb)
    {
    	tXqJssb.setCreateBy(this.getSysUser().getLoginName());
        return toAjax(tXqJssbService.insertTXqJssb(tXqJssb));
    }

    /**
     * 修改急事速办
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
    	Dept dept = new Dept();
    	mmap.put("dept", dept);
        TXqJssb tXqJssb = tXqJssbService.selectTXqJssbById(id);
        mmap.put("tXqJssb", tXqJssb);
        return prefix + "/edit";
    }

    /**
     * 修改保存急事速办
     */
    @RequiresPermissions("manage:jssb:edit")
    @Log(title = "急事速办", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqJssb tXqJssb)
    {
    	tXqJssb.setCreateBy(this.getSysUser().getLoginName());
        return toAjax(tXqJssbService.updateTXqJssb(tXqJssb));
    }

    /**
     * 删除急事速办
     */
    @RequiresPermissions("manage:jssb:remove")
    @Log(title = "急事速办", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqJssbService.deleteTXqJssbByIds(ids));
    }
}
