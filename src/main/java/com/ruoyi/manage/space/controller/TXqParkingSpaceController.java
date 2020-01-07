package com.ruoyi.manage.space.controller;

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
import com.ruoyi.manage.floor.domain.XqFloor;
import com.ruoyi.manage.space.domain.TXqParkingSpace;
import com.ruoyi.manage.space.service.ITXqParkingSpaceService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 停车费Controller
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Controller
@RequestMapping("/manage/space")
public class TXqParkingSpaceController extends BaseController
{
    private String prefix = "manage/space";

    @Autowired
    private ITXqParkingSpaceService tXqParkingSpaceService;

    @RequiresPermissions("manage:space:view")
    @GetMapping()
    public String space()
    {
        return prefix + "/space";
    }

    /**
     * 查询停车费列表
     */
    @RequiresPermissions("manage:space:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TXqParkingSpace tXqParkingSpace)
    {
        startPage();
        List<TXqParkingSpace> list = tXqParkingSpaceService.selectTXqParkingSpaceList(tXqParkingSpace);
        return getDataTable(list);
    }

    /**
     * 导出停车费列表
     */
    @RequiresPermissions("manage:space:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TXqParkingSpace tXqParkingSpace)
    {
        List<TXqParkingSpace> list = tXqParkingSpaceService.selectTXqParkingSpaceList(tXqParkingSpace);
        ExcelUtil<TXqParkingSpace> util = new ExcelUtil<TXqParkingSpace>(TXqParkingSpace.class);
        return util.exportExcel(list, "space");
    }

    /**
     * 新增停车费
     */
    @GetMapping("/add/{floorId}")
    public String add(@PathVariable("floorId") Integer floorId, ModelMap mmap)
    {
    	mmap.put("floorId", floorId);
        return prefix + "/add";
    }

    /**
     * 新增保存停车费
     */
    @RequiresPermissions("manage:space:add")
    @Log(title = "停车费", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TXqParkingSpace tXqParkingSpace)
    {
    	tXqParkingSpace.setParkingFee(Float.valueOf(tXqParkingSpace.getParkingFee()) * 100 + "");
        return toAjax(tXqParkingSpaceService.insertTXqParkingSpace(tXqParkingSpace));
    }

    /**
     * 修改停车费
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TXqParkingSpace tXqParkingSpace = tXqParkingSpaceService.selectTXqParkingSpaceById(id);
        mmap.put("tXqParkingSpace", tXqParkingSpace);
        return prefix + "/edit";
    }

    /**
     * 修改保存停车费
     */
    @RequiresPermissions("manage:space:edit")
    @Log(title = "停车费", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TXqParkingSpace tXqParkingSpace)
    {
    	tXqParkingSpace.setParkingFee(Float.valueOf(tXqParkingSpace.getParkingFee()) * 100 + "");
        return toAjax(tXqParkingSpaceService.updateTXqParkingSpace(tXqParkingSpace));
    }

    /**
     * 删除停车费
     */
    @RequiresPermissions("manage:space:remove")
    @Log(title = "停车费", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tXqParkingSpaceService.deleteTXqParkingSpaceByIds(ids));
    }
    
    @RequiresPermissions("manage:space:edit")
    @PostMapping( "/check")
    @ResponseBody
    public int check(TXqParkingSpace tXqParkingSpace)
    {
    	Long deptId = tXqParkingSpaceService.selectDeptIdByFloorId(tXqParkingSpace);
    	tXqParkingSpace.setDeptId(deptId);
    	
    	System.out.println("================================= : " + tXqParkingSpace);
        return tXqParkingSpaceService.checkSpace(tXqParkingSpace);
    }
    
    /**
     * @descripton 推送
     * @param @param id
     * @param @return
     * @return AjaxResult  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月17日 下午5:22:50
     */
    @RequiresPermissions("manage:space:edit")
    @Log(title = "停车费", businessType = BusinessType.UPDATE)
    @PostMapping( "/push")
    @ResponseBody
    @Transactional
    public AjaxResult push(Long id)
    {
    	PageData pd = tXqParkingSpaceService.getSomeInfo(id);
    	TXqParkingSpace tXqParkingSpace = tXqParkingSpaceService.selectTXqParkingSpaceByIdScore(id);
    	pd.put("fee", tXqParkingSpace.getParkingFee());
    	pd.put("id", id);
    	pd.put("startTime", tXqParkingSpace.getStartTime());
    	pd.put("endTime", tXqParkingSpace.getEndTime());
    	tXqParkingSpaceService.savePush(pd);
        return toAjax(tXqParkingSpaceService.pushSpace(id));
    }
    
}
