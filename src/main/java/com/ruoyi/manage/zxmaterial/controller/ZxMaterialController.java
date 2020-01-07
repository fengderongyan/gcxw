package com.ruoyi.manage.zxmaterial.controller;

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
import com.ruoyi.manage.materialstore.domain.ZxMaterialStore;
import com.ruoyi.manage.materialstore.service.IZxMaterialStoreService;
import com.ruoyi.manage.zxmaterial.domain.ZxMaterial;
import com.ruoyi.manage.zxmaterial.service.IZxMaterialService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 建材商品管理Controller
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/manage/zxmaterial")
public class ZxMaterialController extends BaseController
{
    private String prefix = "manage/zxmaterial";

    @Autowired
    private IZxMaterialService zxMaterialService;
    @Autowired
    private IZxMaterialStoreService zxMaterialStoreService;

    @RequiresPermissions("manage:zxmaterial:view")
    @GetMapping()
    public String zxmaterial(ModelMap mmap)
    {
    	List<ZxMaterialStore> materialStores = zxMaterialStoreService.selectZxMaterialStoreList(null);
    	mmap.put("materialStores", materialStores);
        return prefix + "/zxmaterial";
    }

    /**
     * 查询建材商品管理列表
     */
    @RequiresPermissions("manage:zxmaterial:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxMaterial zxMaterial)
    {
        startPage();
        List<ZxMaterial> list = zxMaterialService.selectZxMaterialList(zxMaterial);
        return getDataTable(list);
    }

    /**
     * 导出建材商品管理列表
     */
    @RequiresPermissions("manage:zxmaterial:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxMaterial zxMaterial)
    {
        List<ZxMaterial> list = zxMaterialService.selectZxMaterialList(zxMaterial);
        ExcelUtil<ZxMaterial> util = new ExcelUtil<ZxMaterial>(ZxMaterial.class);
        return util.exportExcel(list, "zxmaterial");
    }

    /**
     * 新增建材商品管理
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	List<ZxMaterialStore> materialStores = zxMaterialStoreService.selectZxMaterialStoreList(null);
    	mmap.put("materialStores", materialStores);
        return prefix + "/add";
    }

    /**
     * 新增保存建材商品管理
     */
    @RequiresPermissions("manage:zxmaterial:add")
    @Log(title = "建材商品管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxMaterial zxMaterial, String[] detailImgUrls)
    {
        return toAjax(zxMaterialService.insertZxMaterial(zxMaterial, detailImgUrls));
    }

    /**
     * 修改建材商品管理
     */
    @GetMapping("/edit/{materialId}")
    public String edit(@PathVariable("materialId") Long materialId, ModelMap mmap)
    {
        ZxMaterial zxMaterial = zxMaterialService.selectZxMaterialById(materialId);
        List<ZxMaterialStore> materialStores = zxMaterialStoreService.selectZxMaterialStoreList(null);
    	mmap.put("materialStores", materialStores);
        mmap.put("zxMaterial", zxMaterial);
        return prefix + "/edit";
    }

    /**
     * 修改保存建材商品管理
     */
    @RequiresPermissions("manage:zxmaterial:edit")
    @Log(title = "建材商品管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxMaterial zxMaterial, String[] detailImgUrls)
    {
        return toAjax(zxMaterialService.updateZxMaterial(zxMaterial, detailImgUrls));
    }

    /**
     * 删除建材商品管理
     */
    @RequiresPermissions("manage:zxmaterial:remove")
    @Log(title = "建材商品管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxMaterialService.deleteZxMaterialByIds(ids));
    }
    
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ZxMaterial zxMaterial){
    	return toAjax(zxMaterialService.changeStatus(zxMaterial));
    }
}
