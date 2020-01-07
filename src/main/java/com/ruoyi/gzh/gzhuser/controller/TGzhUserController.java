package com.ruoyi.gzh.gzhuser.controller;

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
import com.ruoyi.gzh.gzhuser.domain.TGzhUser;
import com.ruoyi.gzh.gzhuser.service.ITGzhUserService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 公众号关注用户Controller
 * 
 * @author yanbs
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/gzh/gzhuser")
public class TGzhUserController extends BaseController
{
    private String prefix = "gzh/gzhuser";

    @Autowired
    private ITGzhUserService tGzhUserService;

    @RequiresPermissions("gzh:gzhuser:view")
    @GetMapping()
    public String gzhuser()
    {
        return prefix + "/gzhuser";
    }

    /**
     * 查询公众号关注用户列表
     */
    @RequiresPermissions("gzh:gzhuser:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TGzhUser tGzhUser)
    {
        startPage();
        List<TGzhUser> list = tGzhUserService.selectTGzhUserList(tGzhUser);
        return getDataTable(list);
    }

    /**
     * 导出公众号关注用户列表
     */
    @RequiresPermissions("gzh:gzhuser:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TGzhUser tGzhUser)
    {
        List<TGzhUser> list = tGzhUserService.selectTGzhUserList(tGzhUser);
        ExcelUtil<TGzhUser> util = new ExcelUtil<TGzhUser>(TGzhUser.class);
        return util.exportExcel(list, "gzhuser");
    }

    /**
     * 新增公众号关注用户
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存公众号关注用户
     */
    @RequiresPermissions("gzh:gzhuser:add")
    @Log(title = "公众号关注用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TGzhUser tGzhUser)
    {
        return toAjax(tGzhUserService.insertTGzhUser(tGzhUser));
    }

    /**
     * 修改公众号关注用户
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
    	Dept dept = new Dept();
    	mmap.put("dept", dept);
        TGzhUser tGzhUser = tGzhUserService.selectTGzhUserById(id);
        mmap.put("tGzhUser", tGzhUser);
        return prefix + "/edit";
    }

    /**
     * 修改保存公众号关注用户
     */
    @RequiresPermissions("gzh:gzhuser:edit")
    @Log(title = "公众号关注用户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TGzhUser tGzhUser)
    {
        return toAjax(tGzhUserService.updateTGzhUser(tGzhUser));
    }

    /**
     * 删除公众号关注用户
     */
    @RequiresPermissions("gzh:gzhuser:remove")
    @Log(title = "公众号关注用户", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tGzhUserService.deleteTGzhUserByIds(ids));
    }
    
    /**
     * @descripton 拉去微信公众号关注用户信息
     * @param @param tGzhUser
     * @param @return
     * @return AjaxResult  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月11日 上午9:06:30
     */
    @RequiresPermissions("gzh:gzhuser:edit")
    @Log(title = "公众号关注用户", businessType = BusinessType.UPDATE)
    @PostMapping("/download")
    @ResponseBody
    public AjaxResult download(TGzhUser tGzhUser)
    {
    	tGzhUser.setUpdateBy(this.getSysUser().getLoginName());
        return toAjax(tGzhUserService.loadGzhUser(tGzhUser));
    }
    
    
}
