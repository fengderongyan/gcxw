package com.ruoyi.manage.bxinfo.controller;

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
import com.ruoyi.manage.bxinfo.domain.TXqBxInfo;
import com.ruoyi.manage.bxinfo.service.ITXqBxInfoService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 报修管理Controller
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
@Controller
@RequestMapping("/manage/bxinfo")
public class TXqBxInfoController extends BaseController
{
    private String prefix = "manage/bxinfo";

    @Autowired
    private ITXqBxInfoService tXqBxInfoService;

    @RequiresPermissions("manage:bxinfo:view")
    @GetMapping()
    public String bxinfo()
    {
        return prefix + "/bxinfo";
    }

    /**
     * 查询报修管理列表
     */
    @RequiresPermissions("manage:bxinfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqBxInfo tXqBxInfo)
    {
        startPage();
        List<TXqBxInfo> list = tXqBxInfoService.selectTXqBxInfoList(tXqBxInfo);
        return getDataTable(list);
    }

    /**
     * 导出报修管理列表
     */
    @RequiresPermissions("manage:bxinfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqBxInfo tXqBxInfo)
    {
        List<TXqBxInfo> list = tXqBxInfoService.selectTXqBxInfoList(tXqBxInfo);
        ExcelUtil<TXqBxInfo> util = new ExcelUtil<TXqBxInfo>(TXqBxInfo.class);
        return util.exportExcel(list, "bxinfo");
    }

    /**
     * 新增报修管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报修管理
     */
    @RequiresPermissions("manage:bxinfo:add")
    @Log(title = "报修管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqBxInfo tXqBxInfo)
    {
        return toAjax(tXqBxInfoService.insertTXqBxInfo(tXqBxInfo));
    }

    /**
     * 修改报修管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqBxInfo tXqBxInfo = tXqBxInfoService.selectTXqBxInfoById(id);
        mmap.put("tXqBxInfo", tXqBxInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存报修管理
     */
    @RequiresPermissions("manage:bxinfo:edit")
    @Log(title = "报修管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqBxInfo tXqBxInfo)
    {
        return toAjax(tXqBxInfoService.updateTXqBxInfo(tXqBxInfo));
    }

    /**
     * 删除报修管理
     */
    @RequiresPermissions("manage:bxinfo:remove")
    @Log(title = "报修管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqBxInfoService.deleteTXqBxInfoByIds(ids));
    }
}
