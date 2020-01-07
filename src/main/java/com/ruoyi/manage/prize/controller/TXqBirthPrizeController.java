package com.ruoyi.manage.prize.controller;

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
import com.ruoyi.manage.prize.domain.TXqBirthPrize;
import com.ruoyi.manage.prize.service.ITXqBirthPrizeService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 生日奖品管理Controller
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/manage/prize")
public class TXqBirthPrizeController extends BaseController
{
    private String prefix = "manage/prize";

    @Autowired
    private ITXqBirthPrizeService tXqBirthPrizeService;

    @RequiresPermissions("manage:prize:view")
    @GetMapping()
    public String prize()
    {
        return prefix + "/prize";
    }

    /**
     * 查询生日奖品管理列表
     */
    @RequiresPermissions("manage:prize:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqBirthPrize tXqBirthPrize)
    {
        startPage();
        List<TXqBirthPrize> list = tXqBirthPrizeService.selectTXqBirthPrizeList(tXqBirthPrize);
        return getDataTable(list);
    }

    /**
     * 导出生日奖品管理列表
     */
    @RequiresPermissions("manage:prize:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqBirthPrize tXqBirthPrize)
    {
        List<TXqBirthPrize> list = tXqBirthPrizeService.selectTXqBirthPrizeList(tXqBirthPrize);
        ExcelUtil<TXqBirthPrize> util = new ExcelUtil<TXqBirthPrize>(TXqBirthPrize.class);
        return util.exportExcel(list, "prize");
    }

    /**
     * 新增生日奖品管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存生日奖品管理
     */
    @RequiresPermissions("manage:prize:add")
    @Log(title = "生日奖品管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqBirthPrize tXqBirthPrize)
    {
        return toAjax(tXqBirthPrizeService.insertTXqBirthPrize(tXqBirthPrize));
    }

    /**
     * 修改生日奖品管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqBirthPrize tXqBirthPrize = tXqBirthPrizeService.selectTXqBirthPrizeById(id);
        mmap.put("tXqBirthPrize", tXqBirthPrize);
        return prefix + "/edit";
    }

    /**
     * 修改保存生日奖品管理
     */
    @RequiresPermissions("manage:prize:edit")
    @Log(title = "生日奖品管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqBirthPrize tXqBirthPrize)
    {
        return toAjax(tXqBirthPrizeService.updateTXqBirthPrize(tXqBirthPrize));
    }

    /**
     * 删除生日奖品管理
     */
    @RequiresPermissions("manage:prize:remove")
    @Log(title = "生日奖品管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqBirthPrizeService.deleteTXqBirthPrizeByIds(ids));
    }
}
