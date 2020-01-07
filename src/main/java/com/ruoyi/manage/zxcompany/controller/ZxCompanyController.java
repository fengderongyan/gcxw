package com.ruoyi.manage.zxcompany.controller;

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
import com.ruoyi.manage.zxcompany.domain.ZxCompany;
import com.ruoyi.manage.zxcompany.service.IZxCompanyService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修公司管理Controller
 * 
 * @author yanbs
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/manage/zxcompany")
public class ZxCompanyController extends BaseController
{
    private String prefix = "manage/zxcompany";

    @Autowired
    private IZxCompanyService zxCompanyService;
    @Autowired
    private IDeptService deptService;

    @RequiresPermissions("manage:zxcompany:view")
    @GetMapping()
    public String zxcompany()
    {
        return prefix + "/zxcompany";
    }

    /**
     * 查询装修公司管理列表
     */
    @RequiresPermissions("manage:zxcompany:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxCompany zxCompany)
    {
        startPage();
        List<ZxCompany> list = zxCompanyService.selectZxCompanyList(zxCompany);
        return getDataTable(list);
    }

    /**
     * 导出装修公司管理列表
     */
    @RequiresPermissions("manage:zxcompany:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxCompany zxCompany)
    {
        List<ZxCompany> list = zxCompanyService.selectZxCompanyList(zxCompany);
        ExcelUtil<ZxCompany> util = new ExcelUtil<ZxCompany>(ZxCompany.class);
        return util.exportExcel(list, "zxcompany");
    }

    /**
     * 新增装修公司管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装修公司管理
     */
    @RequiresPermissions("manage:zxcompany:add")
    @Log(title = "装修公司管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxCompany zxCompany)
    {
        return toAjax(zxCompanyService.insertZxCompany(zxCompany));
    }

    /**
     * 修改装修公司管理
     */
    @GetMapping("/edit/{zxCompanyId}")
    public String edit(@PathVariable("zxCompanyId") Long zxCompanyId, ModelMap mmap)
    {
        ZxCompany zxCompany = zxCompanyService.selectZxCompanyById(zxCompanyId);
        mmap.put("zxCompany", zxCompany);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修公司管理
     */
    @RequiresPermissions("manage:zxcompany:edit")
    @Log(title = "装修公司管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxCompany zxCompany)
    {
        return toAjax(zxCompanyService.updateZxCompany(zxCompany));
    }

    /**
     * 删除装修公司管理
     */
    @RequiresPermissions("manage:zxcompany:remove")
    @Log(title = "装修公司管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxCompanyService.deleteZxCompanyByIds(ids));
    }
    
    @PostMapping( "/changeIsMain")
    @ResponseBody
    public AjaxResult changeIsMain(ZxCompany zxCompany){
    	
    	return toAjax(zxCompanyService.changeIsMain(zxCompany));
    }
    
    /**
     * 描述：挂靠小区
     * @param zxBannerVideoId
     * @return
     * @author yanbs
     * @Date 2019-12-05
     */
    @GetMapping( "/addXq")
    public String addXq(Long zxCompanyId, ModelMap mmap){
    	List<Dept> xqList = deptService.selectXqList(new Dept());
    	List<PageData> xqListWithSelect = zxCompanyService.selectXqList(zxCompanyId, xqList);
    	mmap.put("xqListWithSelect", xqListWithSelect);
    	mmap.put("zxCompanyId", zxCompanyId);
    	return prefix + "/addXq";
    }
    
    @PostMapping( "/saveXq")
    @ResponseBody
    public AjaxResult saveXq(Long zxCompanyId, Long[] deptIds){
    	return toAjax(zxCompanyService.saveXq(zxCompanyId, deptIds));
    	
    }
    
    @PostMapping( "/checkXqExists")
    @ResponseBody
    public int checkXqExists(Long zxCompanyId){
    	
    	return zxCompanyService.checkXqExists(zxCompanyId);
    }
    
    @GetMapping( "/designerList")
    public String designerList(Long zxCompanyId, ModelMap mmap){
    	List<ZxCompany> zxCompanys = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("zxCompanys", zxCompanys);
    	mmap.put("zxCompanyId", zxCompanyId);
    	return "manage/zxdesigner/zxdesigner";
    }
}
