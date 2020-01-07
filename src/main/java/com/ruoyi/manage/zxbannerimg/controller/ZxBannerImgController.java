package com.ruoyi.manage.zxbannerimg.controller;

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
import com.ruoyi.manage.zxbannerimg.service.IZxBannerImgService;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修首页bannerController
 * 
 * @author yanbs
 * @date 2019-12-17
 */
@Controller
@RequestMapping("/manage/zxbannerimg")
public class ZxBannerImgController extends BaseController
{
    private String prefix = "manage/zxbannerimg";

    @Autowired
    private IZxBannerImgService zxBannerImgService;
    @Autowired
    private IDeptService deptService;

    @RequiresPermissions("manage:zxbannerimg:view")
    @GetMapping()
    public String zxbannerimg()
    {
        return prefix + "/zxbannerimg";
    }

    /**
     * 查询装修首页banner列表
     */
    @RequiresPermissions("manage:zxbannerimg:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxBannerImg zxBannerImg)
    {
        startPage();
        List<ZxBannerImg> list = zxBannerImgService.selectZxBannerImgList(zxBannerImg);
        return getDataTable(list);
    }

    /**
     * 导出装修首页banner列表
     */
    @RequiresPermissions("manage:zxbannerimg:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxBannerImg zxBannerImg)
    {
        List<ZxBannerImg> list = zxBannerImgService.selectZxBannerImgList(zxBannerImg);
        ExcelUtil<ZxBannerImg> util = new ExcelUtil<ZxBannerImg>(ZxBannerImg.class);
        return util.exportExcel(list, "zxbannerimg");
    }

    /**
     * 新增装修首页banner
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装修首页banner
     */
    @RequiresPermissions("manage:zxbannerimg:add")
    @Log(title = "装修首页banner", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxBannerImg zxBannerImg)
    {
        return toAjax(zxBannerImgService.insertZxBannerImg(zxBannerImg));
    }

    /**
     * 修改装修首页banner
     */
    @GetMapping("/edit/{zxBannerImgId}")
    public String edit(@PathVariable("zxBannerImgId") Long zxBannerImgId, ModelMap mmap)
    {
        ZxBannerImg zxBannerImg = zxBannerImgService.selectZxBannerImgById(zxBannerImgId);
        mmap.put("zxBannerImg", zxBannerImg);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修首页banner
     */
    @RequiresPermissions("manage:zxbannerimg:edit")
    @Log(title = "装修首页banner", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxBannerImg zxBannerImg)
    {
        return toAjax(zxBannerImgService.updateZxBannerImg(zxBannerImg));
    }

    /**
     * 删除装修首页banner
     */
    @RequiresPermissions("manage:zxbannerimg:remove")
    @Log(title = "装修首页banner", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxBannerImgService.deleteZxBannerImgByIds(ids));
    }
    
    @RequiresPermissions("manage:zxbannerimg:edit")
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ZxBannerImg zxBannerImg){
    	return toAjax(zxBannerImgService.changeStatus(zxBannerImg));
    }
    
    @GetMapping( "/addXq")
    public String addXq(Long zxBannerImgId, ModelMap mmap){
    	List<Dept> xqList = deptService.selectXqList(new Dept());
    	List<PageData> xqListWithSelect = zxBannerImgService.selectXqList(zxBannerImgId, xqList);
    	mmap.put("xqListWithSelect", xqListWithSelect);
    	mmap.put("zxBannerImgId", zxBannerImgId);
    	return prefix + "/addXq";
    }
    
    @PostMapping( "/saveXq")
    @ResponseBody
    public AjaxResult saveXq(Long zxBannerImgId, Long[] deptIds){
    	return toAjax(zxBannerImgService.saveXq(zxBannerImgId, deptIds));
    	
    }
    
    @PostMapping( "/checkXqExists")
    @ResponseBody
    public int checkXqExists(Long zxBannerImgId){
    	
    	return zxBannerImgService.checkXqExists(zxBannerImgId);
    }
}
