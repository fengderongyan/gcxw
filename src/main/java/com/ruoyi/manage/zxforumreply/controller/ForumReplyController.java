package com.ruoyi.manage.zxforumreply.controller;

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
import com.ruoyi.manage.zxforumreply.domain.ForumReply;
import com.ruoyi.manage.zxforumreply.service.IForumReplyService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 评论管理Controller
 * 
 * @author yanbs
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/manage/zxforumreply")
public class ForumReplyController extends BaseController
{
    private String prefix = "manage/zxforumreply";

    @Autowired
    private IForumReplyService forumReplyService;

    @RequiresPermissions("manage:zxforumreply:view")
    @GetMapping()
    public String zxforumreply()
    {
        return prefix + "/zxforumreply";
    }

    /**
     * 查询评论管理列表
     */
    @RequiresPermissions("manage:zxforumreply:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ForumReply forumReply)
    {
        startPage();
        List<ForumReply> list = forumReplyService.selectForumReplyList(forumReply);
        return getDataTable(list);
    }

    /**
     * 导出评论管理列表
     */
    @RequiresPermissions("manage:zxforumreply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ForumReply forumReply)
    {
        List<ForumReply> list = forumReplyService.selectForumReplyList(forumReply);
        ExcelUtil<ForumReply> util = new ExcelUtil<ForumReply>(ForumReply.class);
        return util.exportExcel(list, "zxforumreply");
    }

    /**
     * 新增评论管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存评论管理
     */
    @RequiresPermissions("manage:zxforumreply:add")
    @Log(title = "评论管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ForumReply forumReply)
    {
        return toAjax(forumReplyService.insertForumReply(forumReply));
    }

    /**
     * 修改评论管理
     */
    @GetMapping("/edit/{forumReplyId}")
    public String edit(@PathVariable("forumReplyId") Long forumReplyId, ModelMap mmap)
    {
        ForumReply forumReply = forumReplyService.selectForumReplyById(forumReplyId);
        mmap.put("forumReply", forumReply);
        return prefix + "/edit";
    }

    /**
     * 修改保存评论管理
     */
    @RequiresPermissions("manage:zxforumreply:edit")
    @Log(title = "评论管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ForumReply forumReply)
    {
        return toAjax(forumReplyService.updateForumReply(forumReply));
    }

    /**
     * 删除评论管理
     */
    @RequiresPermissions("manage:zxforumreply:remove")
    @Log(title = "评论管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(forumReplyService.deleteForumReplyByIds(ids));
    }
}
