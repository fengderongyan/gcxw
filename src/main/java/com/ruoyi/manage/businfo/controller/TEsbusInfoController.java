package com.ruoyi.manage.businfo.controller;

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
import com.ruoyi.manage.businfo.domain.TEsbusInfo;
import com.ruoyi.manage.businfo.service.ITEsbusInfoService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 二手交易管理Controller
 * 
 * @author zhangchengcai
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/manage/businfo")
public class TEsbusInfoController extends BaseController
{
    private String prefix = "manage/businfo";

    @Autowired
    private ITEsbusInfoService tEsbusInfoService;

    @RequiresPermissions("manage:businfo:view")
    @GetMapping()
    public String businfo()
    {
        return prefix + "/businfo";
    }

    /**
     * 查询二手交易管理列表
     */
    @RequiresPermissions("manage:businfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TEsbusInfo tEsbusInfo)
    {
        startPage();
        List<TEsbusInfo> list = tEsbusInfoService.selectTEsbusInfoList(tEsbusInfo);
        return getDataTable(list);
    }

    /**
     * 导出二手交易管理列表
     */
    @RequiresPermissions("manage:businfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TEsbusInfo tEsbusInfo)
    {
        List<TEsbusInfo> list = tEsbusInfoService.selectTEsbusInfoList(tEsbusInfo);
        ExcelUtil<TEsbusInfo> util = new ExcelUtil<TEsbusInfo>(TEsbusInfo.class);
        return util.exportExcel(list, "businfo");
    }

    /**
     * 新增二手交易管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存二手交易管理
     */
    @RequiresPermissions("manage:businfo:add")
    @Log(title = "二手交易管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TEsbusInfo tEsbusInfo)
    {
        return toAjax(tEsbusInfoService.insertTEsbusInfo(tEsbusInfo));
    }

    /**
     * 修改二手交易管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TEsbusInfo tEsbusInfo = tEsbusInfoService.selectTEsbusInfoById(id);
        mmap.put("tEsbusInfo", tEsbusInfo);
        List pd = tEsbusInfoService.selectBanner(id);
        List pd1 = tEsbusInfoService.selectBase(id);
        mmap.put("bannerList", pd);
        mmap.put("baseList", pd1);
        return prefix + "/edit";
    }

    /**
     * 修改保存二手交易管理
     */
    @RequiresPermissions("manage:businfo:edit")
    @Log(title = "二手交易管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TEsbusInfo tEsbusInfo)
    {
    	tEsbusInfo.setShOper(this.getSysUser().getLoginName());
        return toAjax(tEsbusInfoService.updateTEsbusInfo(tEsbusInfo));
    }

    /**
     * 删除二手交易管理
     */
    @RequiresPermissions("manage:businfo:remove")
    @Log(title = "二手交易管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tEsbusInfoService.deleteTEsbusInfoByIds(ids));
    }
}
