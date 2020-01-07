package com.ruoyi.manage.zxdesigner.controller;

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
import com.ruoyi.manage.zxdesigner.domain.ZxDesigner;
import com.ruoyi.manage.zxdesigner.service.IZxDesignerService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 设计师管理Controller
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/manage/zxdesigner")
public class ZxDesignerController extends BaseController
{
    private String prefix = "manage/zxdesigner";

    @Autowired
    private IZxDesignerService zxDesignerService;
    
    @Autowired
    private IZxCompanyService zxCompanyService;

    @RequiresPermissions("manage:zxdesigner:view")
    @GetMapping()
    public String zxdesigner(ModelMap mmap)
    {
    	List<ZxCompany> zxCompanys = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("zxCompanys", zxCompanys);
        return prefix + "/zxdesigner";
    }

    /**
     * 查询设计师管理列表
     */
    @RequiresPermissions("manage:zxdesigner:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxDesigner zxDesigner)
    {
        startPage();
        List<ZxDesigner> list = zxDesignerService.selectZxDesignerList(zxDesigner);
        return getDataTable(list);
    }

    /**
     * 导出设计师管理列表
     */
    @RequiresPermissions("manage:zxdesigner:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxDesigner zxDesigner)
    {
        List<ZxDesigner> list = zxDesignerService.selectZxDesignerList(zxDesigner);
        ExcelUtil<ZxDesigner> util = new ExcelUtil<ZxDesigner>(ZxDesigner.class);
        return util.exportExcel(list, "zxdesigner");
    }

    /**
     * 新增设计师管理
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	List<ZxCompany> zxCompanys = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("zxCompanys", zxCompanys);
        return prefix + "/add";
    }

    /**
     * 新增保存设计师管理
     */
    @RequiresPermissions("manage:zxdesigner:add")
    @Log(title = "设计师管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxDesigner zxDesigner)
    {
        return toAjax(zxDesignerService.insertZxDesigner(zxDesigner));
    }

    /**
     * 修改设计师管理
     */
    @GetMapping("/edit/{designerId}")
    public String edit(@PathVariable("designerId") Long designerId, ModelMap mmap)
    {
        ZxDesigner zxDesigner = zxDesignerService.selectZxDesignerById(designerId);
        List<ZxCompany> zxCompanys = zxCompanyService.selectZxCompanyList(null);
    	mmap.put("zxCompanys", zxCompanys);
        mmap.put("zxDesigner", zxDesigner);
        return prefix + "/edit";
    }

    /**
     * 修改保存设计师管理
     */
    @RequiresPermissions("manage:zxdesigner:edit")
    @Log(title = "设计师管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxDesigner zxDesigner)
    {
        return toAjax(zxDesignerService.updateZxDesigner(zxDesigner));
    }

    /**
     * 删除设计师管理
     */
    @RequiresPermissions("manage:zxdesigner:remove")
    @Log(title = "设计师管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxDesignerService.deleteZxDesignerByIds(ids));
    }
    
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ZxDesigner zxDesigner){
    	
    	 return toAjax(zxDesignerService.changeStatus(zxDesigner));
    }
}
