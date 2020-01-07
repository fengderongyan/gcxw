package com.ruoyi.manage.xqvr.controller;

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
import com.ruoyi.manage.xqvr.domain.XqVr;
import com.ruoyi.manage.xqvr.service.IXqVrService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 小区全景配置Controller
 * 
 * @author yanbs
 * @date 2019-12-04
 */
@Controller
@RequestMapping("/manage/xqvr")
public class XqVrController extends BaseController
{
    private String prefix = "manage/xqvr";

    @Autowired
    private IXqVrService xqVrService;
    @Autowired
    private IDeptService deptService;

    @RequiresPermissions("manage:xqvr:view")
    @GetMapping()
    public String xqvr(ModelMap mmap)
    {
    	List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        return prefix + "/xqvr";
    }

    /**
     * 查询小区全景配置列表
     */
    @RequiresPermissions("manage:xqvr:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(XqVr xqVr)
    {
        startPage();
        List<XqVr> list = xqVrService.selectXqVrList(xqVr);
        return getDataTable(list);
    }

    /**
     * 导出小区全景配置列表
     */
    @RequiresPermissions("manage:xqvr:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(XqVr xqVr)
    {
        List<XqVr> list = xqVrService.selectXqVrList(xqVr);
        ExcelUtil<XqVr> util = new ExcelUtil<XqVr>(XqVr.class);
        return util.exportExcel(list, "xqvr");
    }

    /**
     * 新增小区全景配置
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        return prefix + "/add";
    }

    /**
     * 新增保存小区全景配置
     */
    @RequiresPermissions("manage:xqvr:add")
    @Log(title = "小区全景配置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(XqVr xqVr)
    {
        return toAjax(xqVrService.insertXqVr(xqVr));
    }

    /**
     * 修改小区全景配置
     */
    @GetMapping("/edit/{xqVrId}")
    public String edit(@PathVariable("xqVrId") Long xqVrId, ModelMap mmap)
    {
    	List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        XqVr xqVr = xqVrService.selectXqVrById(xqVrId);
        mmap.put("xqVr", xqVr);
        return prefix + "/edit";
    }

    /**
     * 修改保存小区全景配置
     */
    @RequiresPermissions("manage:xqvr:edit")
    @Log(title = "小区全景配置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(XqVr xqVr)
    {
        return toAjax(xqVrService.updateXqVr(xqVr));
    }

    /**
     * 删除小区全景配置
     */
    @RequiresPermissions("manage:xqvr:remove")
    @Log(title = "小区全景配置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(xqVrService.deleteXqVrByIds(ids));
    }
    
    @PostMapping( "/checkDeptExists")
    @ResponseBody
    public Integer checkDeptExists(XqVr xqVr){
    	return xqVrService.checkDeptExists(xqVr);
    	
    }
}
