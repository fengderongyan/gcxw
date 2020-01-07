package com.ruoyi.manage.zxcase.controller;

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
import com.ruoyi.manage.zxcase.domain.ZxCase;
import com.ruoyi.manage.zxcase.service.IZxCaseService;
import com.ruoyi.manage.zxcompany.domain.ZxCompany;
import com.ruoyi.manage.zxcompany.service.IZxCompanyService;
import com.ruoyi.manage.zxdesigner.domain.ZxDesigner;
import com.ruoyi.manage.zxdesigner.service.IZxDesignerService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修案例Controller
 * 
 * @author yanbs
 * @date 2019-12-31
 */
@Controller
@RequestMapping("/manage/zxcase")
public class ZxCaseController extends BaseController
{
    private String prefix = "manage/zxcase";

    @Autowired
    private IZxCaseService zxCaseService;
    @Autowired
    private IZxCompanyService zxCompanyService;
    @Autowired
    private IZxDesignerService zxDesignerService;

    @RequiresPermissions("manage:zxcase:view")
    @GetMapping()
    public String zxcase(ModelMap mmap)
    {
    	List<ZxCompany> companyList = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("companyList", companyList);
        return prefix + "/zxcase";
    }
    
    @PostMapping("/getDesignerList")
    @ResponseBody
    public List<ZxDesigner> getDesignerList(Long companyId){
    	ZxDesigner designer = new ZxDesigner();
    	designer.setZxCompanyId(companyId);
    	List<ZxDesigner> designerList = zxDesignerService.selectZxDesignerList(designer);
    	return designerList;
    }

    /**
     * 查询装修案例列表
     */
    @RequiresPermissions("manage:zxcase:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxCase zxCase)
    {
        startPage();
        List<ZxCase> list = zxCaseService.selectZxCaseList(zxCase);
        return getDataTable(list);
    }

    /**
     * 新增装修案例
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	List<ZxCompany> companyList = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("companyList", companyList);
        return prefix + "/add";
    }

    /**
     * 新增保存装修案例
     */
    @RequiresPermissions("manage:zxcase:add")
    @Log(title = "装修案例", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxCase zxCase)
    {
        return toAjax(zxCaseService.insertZxCase(zxCase));
    }

    /**
     * 修改装修案例
     */
    @GetMapping("/edit/{caseId}")
    public String edit(@PathVariable("caseId") Long caseId, ModelMap mmap)
    {
        ZxCase zxCase = zxCaseService.selectZxCaseById(caseId);
        List<ZxCompany> companyList = zxCompanyService.selectZxCompanyList(null);
        String[] imgs = zxCase.getImgUrls().split(",");
        mmap.put("zxCase", zxCase);
    	mmap.put("companyList", companyList);
    	mmap.put("imgs", imgs);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修案例
     */
    @RequiresPermissions("manage:zxcase:edit")
    @Log(title = "装修案例", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxCase zxCase)
    {
        return toAjax(zxCaseService.updateZxCase(zxCase));
    }

    /**
     * 删除装修案例
     */
    @RequiresPermissions("manage:zxcase:remove")
    @Log(title = "装修案例", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxCaseService.deleteZxCaseByIds(ids));
    }
}
