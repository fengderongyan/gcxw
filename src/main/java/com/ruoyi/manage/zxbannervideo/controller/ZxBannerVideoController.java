package com.ruoyi.manage.zxbannervideo.controller;

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
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.manage.zxbannervideo.service.IZxBannerVideoService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修首页视频管理Controller
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Controller
@RequestMapping("/manage/zxbannervideo")
public class ZxBannerVideoController extends BaseController
{
    private String prefix = "manage/zxbannervideo";

    @Autowired
    private IZxBannerVideoService zxBannerVideoService;
    @Autowired
    private IDeptService deptService;
    

    @RequiresPermissions("manage:zxbannervideo:view")
    @GetMapping()
    public String zxbannervideo()
    {
        return prefix + "/zxbannervideo";
    }

    /**
     * 查询装修首页视频管理列表
     */
    @RequiresPermissions("manage:zxbannervideo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxBannerVideo zxBannerVideo)
    {
        startPage();
        List<ZxBannerVideo> list = zxBannerVideoService.selectZxBannerVideoList(zxBannerVideo);
        return getDataTable(list);
    }

    /**
     * 导出装修首页视频管理列表
     */
    @RequiresPermissions("manage:zxbannervideo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxBannerVideo zxBannerVideo)
    {
        List<ZxBannerVideo> list = zxBannerVideoService.selectZxBannerVideoList(zxBannerVideo);
        ExcelUtil<ZxBannerVideo> util = new ExcelUtil<ZxBannerVideo>(ZxBannerVideo.class);
        return util.exportExcel(list, "zxbannervideo");
    }

    /**
     * 新增装修首页视频管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装修首页视频管理
     */
    @RequiresPermissions("manage:zxbannervideo:add")
    @Log(title = "装修首页视频管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxBannerVideo zxBannerVideo)
    {
        return toAjax(zxBannerVideoService.insertZxBannerVideo(zxBannerVideo));
    }

    /**
     * 修改装修首页视频管理
     */
    @GetMapping("/edit/{zxBannerVideoId}")
    public String edit(@PathVariable("zxBannerVideoId") Long zxBannerVideoId, ModelMap mmap)
    {
        ZxBannerVideo zxBannerVideo = zxBannerVideoService.selectZxBannerVideoById(zxBannerVideoId);
        mmap.put("zxBannerVideo", zxBannerVideo);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修首页视频管理
     */
    @RequiresPermissions("manage:zxbannervideo:edit")
    @Log(title = "装修首页视频管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxBannerVideo zxBannerVideo)
    {
        return toAjax(zxBannerVideoService.updateZxBannerVideo(zxBannerVideo));
    }

    /**
     * 删除装修首页视频管理
     */
    @RequiresPermissions("manage:zxbannervideo:remove")
    @Log(title = "装修首页视频管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxBannerVideoService.deleteZxBannerVideoByIds(ids));
    }
    
    @RequiresPermissions("manage:zxbannervideo:edit")
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ZxBannerVideo zxBannerVideo){
    	return toAjax(zxBannerVideoService.changeStatus(zxBannerVideo));
    }
    
    /**
     * 描述：挂靠小区
     * @param zxBannerVideoId
     * @return
     * @author yanbs
     * @Date 2019-12-05
     */
    @GetMapping( "/addXq")
    public String addXq(Long zxBannerVideoId, ModelMap mmap){
    	List<Dept> xqList = deptService.selectXqList(new Dept());
    	List<PageData> xqListWithSelect = zxBannerVideoService.selectXqList(zxBannerVideoId, xqList);
    	mmap.put("xqListWithSelect", xqListWithSelect);
    	mmap.put("zxBannerVideoId", zxBannerVideoId);
    	return prefix + "/addXq";
    }
    
    @PostMapping( "/saveXq")
    @ResponseBody
    public AjaxResult saveXq(Long zxBannerVideoId, Long[] deptIds){
    	return toAjax(zxBannerVideoService.saveXq(zxBannerVideoId, deptIds));
    	
    }
    
    @PostMapping( "/checkXqExists")
    @ResponseBody
    public int checkXqExists(Long zxBannerVideoId){
    	
    	return zxBannerVideoService.checkXqExists(zxBannerVideoId);
    }
}
