package com.ruoyi.manage.fee.controller;

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
import com.ruoyi.manage.fee.domain.TXqPushFee;
import com.ruoyi.manage.fee.service.ITXqPushFeeService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 业主缴费Controller
 * 
 * @author yanbs
 * @date 2019-12-20
 */
@Controller
@RequestMapping("/manage/fee")
public class TXqPushFeeController extends BaseController
{
    private String prefix = "manage/fee";

    @Autowired
    private ITXqPushFeeService tXqPushFeeService;

    @RequiresPermissions("manage:fee:view")
    @GetMapping()
    public String fee()
    {
        return prefix + "/fee";
    }

    /**
     * 查询业主缴费列表
     */
    @RequiresPermissions("manage:fee:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqPushFee tXqPushFee)
    {
        startPage();
        List<TXqPushFee> list = tXqPushFeeService.selectTXqPushFeeList(tXqPushFee);
        return getDataTable(list);
    }

    /**
     * 导出业主缴费列表
     */
    @RequiresPermissions("manage:fee:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqPushFee tXqPushFee)
    {
        List<TXqPushFee> list = tXqPushFeeService.selectTXqPushFeeList(tXqPushFee);
        ExcelUtil<TXqPushFee> util = new ExcelUtil<TXqPushFee>(TXqPushFee.class);
        return util.exportExcel(list, "fee");
    }

    /**
     * 新增业主缴费
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存业主缴费
     */
    @RequiresPermissions("manage:fee:add")
    @Log(title = "业主缴费", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqPushFee tXqPushFee)
    {
        return toAjax(tXqPushFeeService.insertTXqPushFee(tXqPushFee));
    }

    /**
     * 修改业主缴费
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqPushFee tXqPushFee = tXqPushFeeService.selectTXqPushFeeById(id);
        mmap.put("tXqPushFee", tXqPushFee);
        return prefix + "/edit";
    }

    /**
     * 修改保存业主缴费
     */
    @RequiresPermissions("manage:fee:edit")
    @Log(title = "业主缴费", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqPushFee tXqPushFee)
    {
        return toAjax(tXqPushFeeService.updateTXqPushFee(tXqPushFee));
    }

    /**
     * 删除业主缴费
     */
    @RequiresPermissions("manage:fee:remove")
    @Log(title = "业主缴费", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqPushFeeService.deleteTXqPushFeeByIds(ids));
    }
}
