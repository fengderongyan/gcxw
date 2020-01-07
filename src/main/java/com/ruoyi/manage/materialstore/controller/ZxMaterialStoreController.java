package com.ruoyi.manage.materialstore.controller;

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
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 建材商管理Controller
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/manage/materialstore")
public class ZxMaterialStoreController extends BaseController
{
    private String prefix = "manage/materialstore";

    @Autowired
    private IZxMaterialStoreService zxMaterialStoreService;
    @Autowired
    private IDeptService deptService;
    @RequiresPermissions("manage:materialstore:view")
    @GetMapping()
    public String materialstore()
    {
        return prefix + "/materialstore";
    }

    /**
     * 查询建材商管理列表
     */
    @RequiresPermissions("manage:materialstore:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxMaterialStore zxMaterialStore)
    {
        startPage();
        List<ZxMaterialStore> list = zxMaterialStoreService.selectZxMaterialStoreList(zxMaterialStore);
        return getDataTable(list);
    }

    /**
     * 导出建材商管理列表
     */
    @RequiresPermissions("manage:materialstore:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxMaterialStore zxMaterialStore)
    {
        List<ZxMaterialStore> list = zxMaterialStoreService.selectZxMaterialStoreList(zxMaterialStore);
        ExcelUtil<ZxMaterialStore> util = new ExcelUtil<ZxMaterialStore>(ZxMaterialStore.class);
        return util.exportExcel(list, "materialstore");
    }

    /**
     * 新增建材商管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存建材商管理
     */
    @RequiresPermissions("manage:materialstore:add")
    @Log(title = "建材商管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxMaterialStore zxMaterialStore)
    {
        return toAjax(zxMaterialStoreService.insertZxMaterialStore(zxMaterialStore));
    }

    /**
     * 修改建材商管理
     */
    @GetMapping("/edit/{materialStoreId}")
    public String edit(@PathVariable("materialStoreId") Long materialStoreId, ModelMap mmap)
    {
        ZxMaterialStore zxMaterialStore = zxMaterialStoreService.selectZxMaterialStoreById(materialStoreId);
        mmap.put("zxMaterialStore", zxMaterialStore);
        return prefix + "/edit";
    }

    /**
     * 修改保存建材商管理
     */
    @RequiresPermissions("manage:materialstore:edit")
    @Log(title = "建材商管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxMaterialStore zxMaterialStore)
    {
        return toAjax(zxMaterialStoreService.updateZxMaterialStore(zxMaterialStore));
    }

    /**
     * 删除建材商管理
     */
    @RequiresPermissions("manage:materialstore:remove")
    @Log(title = "建材商管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxMaterialStoreService.deleteZxMaterialStoreByIds(ids));
    }
    
    /**
     * 描述：挂靠小区
     * @param zxBannerVideoId
     * @return
     * @author yanbs
     * @Date 2019-12-05
     */
    @GetMapping( "/addXq")
    public String addXq(Long materialStoreId, ModelMap mmap){
    	List<Dept> xqList = deptService.selectXqList(new Dept());
    	List<PageData> xqListWithSelect = zxMaterialStoreService.selectXqList(materialStoreId, xqList);
    	mmap.put("xqListWithSelect", xqListWithSelect);
    	mmap.put("materialStoreId", materialStoreId);
    	return prefix + "/addXq";
    }
    
    @PostMapping( "/saveXq")
    @ResponseBody
    public AjaxResult saveXq(Long materialStoreId, Long[] deptIds){
    	return toAjax(zxMaterialStoreService.saveXq(materialStoreId, deptIds));
    	
    }
}
