package com.ruoyi.manage.detail.controller;

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
import com.ruoyi.manage.detail.domain.TXqPropertyDetail;
import com.ruoyi.manage.detail.service.ITXqPropertyDetailService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 物业明细Controller
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Controller
@RequestMapping("/manage/detail")
public class TXqPropertyDetailController extends BaseController
{
    private String prefix = "manage/detail";

    @Autowired
    private ITXqPropertyDetailService tXqPropertyDetailService;

    @RequiresPermissions("manage:detail:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询物业明细列表
     */
    @RequiresPermissions("manage:detail:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqPropertyDetail tXqPropertyDetail)
    {
        startPage();
        List<TXqPropertyDetail> list = tXqPropertyDetailService.selectTXqPropertyDetailList(tXqPropertyDetail);
        return getDataTable(list);
    }

    /**
     * 导出物业明细列表
     */
    @RequiresPermissions("manage:detail:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqPropertyDetail tXqPropertyDetail)
    {
        List<TXqPropertyDetail> list = tXqPropertyDetailService.selectTXqPropertyDetailList(tXqPropertyDetail);
        ExcelUtil<TXqPropertyDetail> util = new ExcelUtil<TXqPropertyDetail>(TXqPropertyDetail.class);
        return util.exportExcel(list, "detail");
    }

    /**
     * 新增物业明细
     */
    @GetMapping("/add/{property}")
    public String add(@PathVariable("property") Integer property, ModelMap mmap)
    {
    	mmap.put("property", property);
        return prefix + "/add";
    }

    /**
     * 新增保存物业明细
     */
    @RequiresPermissions("manage:detail:add")
    @Log(title = "物业明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqPropertyDetail tXqPropertyDetail)
    {
    	tXqPropertyDetail.setDetailFee(Float.valueOf(tXqPropertyDetail.getDetailFee()) * 100 + "");
        return toAjax(tXqPropertyDetailService.insertTXqPropertyDetail(tXqPropertyDetail));
    }

    /**
     * 修改物业明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqPropertyDetail tXqPropertyDetail = tXqPropertyDetailService.selectTXqPropertyDetailById(id);
        mmap.put("tXqPropertyDetail", tXqPropertyDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存物业明细
     */
    @RequiresPermissions("manage:detail:edit")
    @Log(title = "物业明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqPropertyDetail tXqPropertyDetail)
    {
    	tXqPropertyDetail.setDetailFee(Float.valueOf(tXqPropertyDetail.getDetailFee()) * 100 + "");
        return toAjax(tXqPropertyDetailService.updateTXqPropertyDetail(tXqPropertyDetail));
    }

    /**
     * 删除物业明细
     */
    @RequiresPermissions("manage:detail:remove")
    @Log(title = "物业明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqPropertyDetailService.deleteTXqPropertyDetailByIds(ids));
    }
}
