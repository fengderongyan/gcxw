package com.ruoyi.manage.property.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.manage.property.domain.TXqProperty;
import com.ruoyi.manage.property.service.ITXqPropertyService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 物业费Controller
 * 
 * @author zhangchengcai
 * @date 2019-12-05
 */
@Controller
@RequestMapping("/manage/property")
public class TXqPropertyController extends BaseController
{
    private String prefix = "manage/property";

    @Autowired
    private ITXqPropertyService tXqPropertyService;

    @RequiresPermissions("manage:property:view")
    @GetMapping()
    public String property()
    {
        return prefix + "/property";
    }
    
    @GetMapping("/detail/{property}")
    public String detail(@PathVariable("property") Integer property, ModelMap mmap)
    {
        mmap.put("property", property);
        return "manage/detail/detail";
    }

    /**
     * 查询物业费列表
     */
    @RequiresPermissions("manage:property:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqProperty tXqProperty)
    {
        startPage();
        List<TXqProperty> list = tXqPropertyService.selectTXqPropertyList(tXqProperty);
        return getDataTable(list);
    }

    /**
     * 导出物业费列表
     */
    @RequiresPermissions("manage:property:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqProperty tXqProperty)
    {
        List<TXqProperty> list = tXqPropertyService.selectTXqPropertyList(tXqProperty);
        ExcelUtil<TXqProperty> util = new ExcelUtil<TXqProperty>(TXqProperty.class);
        return util.exportExcel(list, "property");
    }

    /**
     * 新增物业费
     */
    @GetMapping("/add/{floorId}")
    public String add(@PathVariable("floorId") Integer floorId, ModelMap mmap)
    {
    	mmap.put("floorId", floorId);
        return prefix + "/add";
    }

    /**
     * 新增保存物业费
     */
    @RequiresPermissions("manage:property:add")
    @Log(title = "物业费", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqProperty tXqProperty)
    {
    	tXqProperty.setCreateBy(this.getSysUser().getUserName());
    	//处理成分
    	tXqProperty.setPropertyFee(Float.valueOf(tXqProperty.getPropertyFee()) * 100 + "");
        return toAjax(tXqPropertyService.insertTXqProperty(tXqProperty));
    }

    /**
     * 修改物业费
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqProperty tXqProperty = tXqPropertyService.selectTXqPropertyById(id);
        mmap.put("tXqProperty", tXqProperty);
        return prefix + "/edit";
    }

    /**
     * 修改保存物业费
     */
    @RequiresPermissions("manage:property:edit")
    @Log(title = "物业费", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqProperty tXqProperty)
    {
    	tXqProperty.setUpdateBy(this.getSysUser().getUserName());
    	tXqProperty.setPropertyFee(Float.valueOf(tXqProperty.getPropertyFee()) * 100 + "");
        return toAjax(tXqPropertyService.updateTXqProperty(tXqProperty));
    }

    /**
     * 删除物业费
     */
    @RequiresPermissions("manage:property:remove")
    @Log(title = "物业费", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqPropertyService.deleteTXqPropertyByIds(ids));
    }
    
    /**
     * @descripton 推送物业费
     * @param @param ids
     * @param @return
     * @return AjaxResult  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月9日 下午2:10:27
     */
    @RequiresPermissions("manage:property:edit")
    @Log(title = "物业费", businessType = BusinessType.UPDATE)
    @PostMapping( "/push")
    @ResponseBody
    @Transactional
    public AjaxResult push(Long id)
    {
    	PageData pd = tXqPropertyService.getSomeInfo(id);
    	TXqProperty tXqProperty = tXqPropertyService.selectTXqPropertyByIdScore(id);
    	pd.put("fee", tXqProperty.getPropertyFee());
    	pd.put("id", id);
    	pd.put("startTime", tXqProperty.getStartTime());
    	pd.put("endTime", tXqProperty.getEndTime());
    	tXqPropertyService.savePush(pd);
        return toAjax(tXqPropertyService.PushTXqPropertyById(id));
    }
}
