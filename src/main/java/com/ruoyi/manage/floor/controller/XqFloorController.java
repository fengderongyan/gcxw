package com.ruoyi.manage.floor.controller;

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
import com.ruoyi.manage.floor.domain.XqFloor;
import com.ruoyi.manage.floor.service.IXqFloorService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 楼栋管理Controller
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Controller
@RequestMapping("/floormanage/floor")
public class XqFloorController extends BaseController
{
    private String prefix = "manage/floor";

    @Autowired
    private IXqFloorService xqFloorService;
    @Autowired
    private IDeptService iDeptService;

    @RequiresPermissions("floormanage:floor:view")
    @GetMapping()
    public String floor()
    {
        return prefix + "/floor";
    }

    /**
     * 查询楼栋管理列表
     */
    @RequiresPermissions("floormanage:floor:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(XqFloor xqFloor)
    {
        startPage();
        List<XqFloor> list = xqFloorService.selectXqFloorList(xqFloor);
        return getDataTable(list);
    }

    @GetMapping("/detail/{floorId}")
    public String detail(@PathVariable("floorId") Long floorId, ModelMap mmap)
    {
        mmap.put("floorId", floorId);
        return "manage/property/property";
    }
    
    @GetMapping("/detailSpace/{floorId}")
    public String detailSpace(@PathVariable("floorId") Long floorId, ModelMap mmap)
    {
        mmap.put("floorId", floorId);
        return "manage/space/space";
    }
    
    /**
     * 导出楼栋管理列表
     */
    @RequiresPermissions("floormanage:floor:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(XqFloor xqFloor)
    {
        List<XqFloor> list = xqFloorService.selectXqFloorList(xqFloor);
        ExcelUtil<XqFloor> util = new ExcelUtil<XqFloor>(XqFloor.class);
        return util.exportExcel(list, "floor");
    }

    /**
     * 新增楼栋管理
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	Dept dept = new Dept();
    	mmap.put("dept", dept);
        return prefix + "/add";
    }

    /**
     * 新增保存楼栋管理
     */
    @RequiresPermissions("floormanage:floor:add")
    @Log(title = "楼栋管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(XqFloor xqFloor)
    {
    	//xqFloor.setDeptId(this.getSysUser().getDeptId());
        return toAjax(xqFloorService.insertXqFloor(xqFloor));
    }

    /**
     * 修改楼栋管理
     */
    @GetMapping("/edit/{floorId}")
    public String edit(@PathVariable("floorId") Long floorId, ModelMap mmap)
    {
        XqFloor xqFloor = xqFloorService.selectXqFloorById(floorId);
        Dept dept = new Dept();
    	mmap.put("dept", dept);
        mmap.put("xqFloor", xqFloor);
        return prefix + "/edit";
    }

    /**
     * 修改保存楼栋管理
     */
    @RequiresPermissions("floormanage:floor:edit")
    @Log(title = "楼栋管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(XqFloor xqFloor)
    {
        return toAjax(xqFloorService.updateXqFloor(xqFloor));
    }

    /**
     * 删除楼栋管理
     */
    @RequiresPermissions("floormanage:floor:remove")
    @Log(title = "楼栋管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(xqFloorService.deleteXqFloorByIds(ids));
    }
    
    /**
     * @descripton 校验是否存在相同户
     * @param @param xqFloor
     * @param @return
     * @return AjaxResult  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月6日 下午3:49:31
     */
    @RequiresPermissions("floormanage:floor:edit")
    @PostMapping( "/check")
    @ResponseBody
    public int check(XqFloor xqFloor)
    {
    	System.out.println("----------------------------------- : " + xqFloor);
        return xqFloorService.checkFloor(xqFloor);
    }
}
