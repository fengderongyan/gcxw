package com.ruoyi.manage.showhome.controller;

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
import com.ruoyi.manage.floor.domain.XqFloor;
import com.ruoyi.manage.floor.service.IXqFloorService;
import com.ruoyi.manage.showhome.domain.ZxShowHome;
import com.ruoyi.manage.showhome.service.IZxShowHomeService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修效果Controller
 * 
 * @author yanbs
 * @date 2019-12-09
 */
@Controller
@RequestMapping("/manage/showhome")
public class ZxShowHomeController extends BaseController
{
    private String prefix = "manage/showhome";

    @Autowired
    private IZxShowHomeService zxShowHomeService;
    @Autowired
    private IDeptService deptService;
    @Autowired
    private IXqFloorService xqFloorService;

    @RequiresPermissions("manage:showhome:view")
    @GetMapping()
    public String showhome(ModelMap mmap)
    {
    	List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        return prefix + "/showhome";
    }

    /**
     * 查询装修效果列表
     */
    @RequiresPermissions("manage:showhome:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxShowHome zxShowHome)
    {
        startPage();
        List<ZxShowHome> list = zxShowHomeService.selectZxShowHomeList(zxShowHome);
        return getDataTable(list);
    }

    /**
     * 新增装修效果
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        return prefix + "/add";
    }

    /**
     * 新增保存装修效果
     */
    @RequiresPermissions("manage:showhome:add")
    @Log(title = "装修效果", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxShowHome zxShowHome, String[] imgUrls)
    {
        return toAjax(zxShowHomeService.insertZxShowHome(zxShowHome, imgUrls));
    }

    /**
     * 修改装修效果
     */
    @GetMapping("/edit/{showHomeId}")
    public String edit(@PathVariable("showHomeId") Long showHomeId, ModelMap mmap)
    {
        ZxShowHome zxShowHome = zxShowHomeService.selectZxShowHomeById(showHomeId);
        List<Dept> deptList = deptService.selectXqList(new Dept());
        mmap.put("zxShowHome", zxShowHome);
    	mmap.put("deptList", deptList);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修效果
     */
    @RequiresPermissions("manage:showhome:edit")
    @Log(title = "装修效果", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxShowHome zxShowHome, String[] imgUrls)
    {
        return toAjax(zxShowHomeService.updateZxShowHome(zxShowHome, imgUrls));
    }

    /**
     * 删除装修效果
     */
    @RequiresPermissions("manage:showhome:remove")
    @Log(title = "装修效果", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxShowHomeService.deleteZxShowHomeByIds(ids));
    }
    
    @GetMapping( "/doorInfo")
    public String doorInfo(XqFloor xqFloor, ModelMap mmap){
    	mmap.put("xqFloor", xqFloor);
    	return prefix + "/doorInfo";
    	
    }
    
    @PostMapping( "/xqList")
    @ResponseBody
    public TableDataInfo xqList(XqFloor xqFloor){
    	startPage();
    	List <XqFloor> xqList = xqFloorService.selectXqFloorList(xqFloor);
    	return getDataTable(xqList);
    }
    
}
