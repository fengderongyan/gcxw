package com.ruoyi.manage.zxmaterialbanner.controller;

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
import com.ruoyi.manage.zxbannerimg.domain.ZxBannerImg;
import com.ruoyi.manage.zxmaterialbanner.domain.ZxMaterialBanner;
import com.ruoyi.manage.zxmaterialbanner.service.IZxMaterialBannerService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 主材推荐bannerController
 * 
 * @author yanbs
 * @date 2020-01-06
 */
@Controller
@RequestMapping("/manage/zxmaterialbanner")
public class ZxMaterialBannerController extends BaseController
{
    private String prefix = "manage/zxmaterialbanner";

    @Autowired
    private IZxMaterialBannerService zxMaterialBannerService;
    @Autowired
    private IDeptService deptService;
    
    @RequiresPermissions("manage:zxmaterialbanner:view")
    @GetMapping()
    public String zxmaterialbanner()
    {
        return prefix + "/zxmaterialbanner";
    }

    /**
     * 查询主材推荐banner列表
     */
    @RequiresPermissions("manage:zxmaterialbanner:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxMaterialBanner zxMaterialBanner)
    {
        startPage();
        List<ZxMaterialBanner> list = zxMaterialBannerService.selectZxMaterialBannerList(zxMaterialBanner);
        return getDataTable(list);
    }

    /**
     * 导出主材推荐banner列表
     */
    @RequiresPermissions("manage:zxmaterialbanner:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxMaterialBanner zxMaterialBanner)
    {
        List<ZxMaterialBanner> list = zxMaterialBannerService.selectZxMaterialBannerList(zxMaterialBanner);
        ExcelUtil<ZxMaterialBanner> util = new ExcelUtil<ZxMaterialBanner>(ZxMaterialBanner.class);
        return util.exportExcel(list, "zxmaterialbanner");
    }

    /**
     * 新增主材推荐banner
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存主材推荐banner
     */
    @RequiresPermissions("manage:zxmaterialbanner:add")
    @Log(title = "主材推荐banner", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxMaterialBanner zxMaterialBanner)
    {
        return toAjax(zxMaterialBannerService.insertZxMaterialBanner(zxMaterialBanner));
    }

    /**
     * 修改主材推荐banner
     */
    @GetMapping("/edit/{materialBannerId}")
    public String edit(@PathVariable("materialBannerId") Long materialBannerId, ModelMap mmap)
    {
        ZxMaterialBanner zxMaterialBanner = zxMaterialBannerService.selectZxMaterialBannerById(materialBannerId);
        mmap.put("zxMaterialBanner", zxMaterialBanner);
        return prefix + "/edit";
    }

    /**
     * 修改保存主材推荐banner
     */
    @RequiresPermissions("manage:zxmaterialbanner:edit")
    @Log(title = "主材推荐banner", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxMaterialBanner zxMaterialBanner)
    {
        return toAjax(zxMaterialBannerService.updateZxMaterialBanner(zxMaterialBanner));
    }

    /**
     * 删除主材推荐banner
     */
    @RequiresPermissions("manage:zxmaterialbanner:remove")
    @Log(title = "主材推荐banner", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxMaterialBannerService.deleteZxMaterialBannerByIds(ids));
    }
    
    @PostMapping( "/checkXqExists")
    @ResponseBody
    public int checkXqExists(Long materialBannerId){
    	
    	return zxMaterialBannerService.checkXqExists(materialBannerId);
    }
    
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ZxMaterialBanner zxMaterialBanner){
    	return toAjax(zxMaterialBannerService.changeStatus(zxMaterialBanner));
    }
    
    @GetMapping( "/addXq")
    public String addXq(Long materialBannerId, ModelMap mmap){
    	List<Dept> xqList = deptService.selectXqList(new Dept());
    	List<PageData> xqListWithSelect = zxMaterialBannerService.selectXqList(materialBannerId, xqList);
    	mmap.put("xqListWithSelect", xqListWithSelect);
    	mmap.put("materialBannerId", materialBannerId);
    	return prefix + "/addXq";
    }
    
    @PostMapping( "/saveXq")
    @ResponseBody
    public AjaxResult saveXq(Long materialBannerId, Long[] deptIds){
    	return toAjax(zxMaterialBannerService.saveXq(materialBannerId, deptIds));
    	
    }
}
