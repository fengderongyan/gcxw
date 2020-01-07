package com.ruoyi.manage.zxforum.controller;

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
import com.ruoyi.manage.zxforum.domain.ZxForum;
import com.ruoyi.manage.zxforum.service.IZxForumService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 装修日志管理Controller
 * 
 * @author yanbs
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/manage/zxforum")
public class ZxForumController extends BaseController
{
    private String prefix = "manage/zxforum";

    @Autowired
    private IZxForumService zxForumService;

    @RequiresPermissions("manage:zxforum:view")
    @GetMapping()
    public String zxforum()
    {
        return prefix + "/zxforum";
    }

    /**
     * 查询装修日志管理列表
     */
    @RequiresPermissions("manage:zxforum:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZxForum zxForum)
    {
        startPage();
        List<ZxForum> list = zxForumService.selectZxForumList(zxForum);
        return getDataTable(list);
    }

    /**
     * 导出装修日志管理列表
     */
    @RequiresPermissions("manage:zxforum:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZxForum zxForum)
    {
        List<ZxForum> list = zxForumService.selectZxForumList(zxForum);
        ExcelUtil<ZxForum> util = new ExcelUtil<ZxForum>(ZxForum.class);
        return util.exportExcel(list, "zxforum");
    }

    /**
     * 新增装修日志管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装修日志管理
     */
    @RequiresPermissions("manage:zxforum:add")
    @Log(title = "装修日志管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZxForum zxForum)
    {
        return toAjax(zxForumService.insertZxForum(zxForum));
    }

    /**
     * 装修日志管理详情
     */
    @GetMapping("/detail/{forumId}")
    public String detail(@PathVariable("forumId") Long forumId, ModelMap mmap)
    {
        ZxForum zxForum = zxForumService.selectZxForumById(forumId);
        mmap.put("zxForum", zxForum);
        return prefix + "/detail";
    }
    
    
    @GetMapping("/edit/{forumId}")
    public String edit(@PathVariable("forumId") Long forumId, ModelMap mmap)
    {
        ZxForum zxForum = zxForumService.selectZxForumById(forumId);
        mmap.put("zxForum", zxForum);
        return prefix + "/edit";
    }

    /**
     * 修改保存装修日志管理
     */
    @RequiresPermissions("manage:zxforum:edit")
    @Log(title = "装修日志管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZxForum zxForum)
    {
        return toAjax(zxForumService.updateZxForum(zxForum));
    }

    /**
     * 删除装修日志管理
     */
    @RequiresPermissions("manage:zxforum:remove")
    @Log(title = "装修日志管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zxForumService.deleteZxForumByIds(ids));
    }
    
    @Log(title = "批量通过装修日志", businessType = BusinessType.DELETE)
    @PostMapping( "/dealAll")
    @ResponseBody
    public AjaxResult dealAll(String ids){
    	return toAjax(zxForumService.dealAll(ids));
    }
    
    @GetMapping( "/selectReply")
    public String selectReply(Long forumId, ModelMap mmap){
    	mmap.put("forumId", forumId);
    	return "manage/zxforumreply/zxforumreply";
    }
}
