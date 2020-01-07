package com.ruoyi.manage.wxuserapply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.manage.wxuserapply.domain.WxUserInfoApply;
import com.ruoyi.manage.wxuserapply.service.IWxUserInfoApplyService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;

@Controller
@RequestMapping("/manage/wxuserapply")
public class WxUserApplyController extends BaseController{

	private String prefix = "manage/wxuserapply";
	
	@Autowired
	private IWxUserInfoApplyService wxUserInfoApplyService; 
	@Autowired
    private IDeptService deptService;
	
	@GetMapping()
    public String wxuserapply(ModelMap mmap)
    {
		List<Dept> deptList = deptService.selectXqList(new Dept());
    	mmap.put("deptList", deptList);
        return prefix + "/wxuserapply";
    }
	
	@PostMapping("/list")
    @ResponseBody
	public TableDataInfo list(WxUserInfoApply wxUserInfoApply){
		startPage();
		List<WxUserInfoApply> list = wxUserInfoApplyService.selectWxUserInfoApplyList(wxUserInfoApply);
		return getDataTable(list);
	}
	
	@PostMapping("/passApply")
    @ResponseBody
	public AjaxResult passApply(Long wxuserInfoApplyId){
		
		return toAjax(wxUserInfoApplyService.passApply(wxuserInfoApplyId));
	}
	
	@GetMapping("/nopassApply")
	public String nopassApply(Long wxuserInfoApplyId){
		return prefix + "/nopassApply";
	}
	
	@PostMapping("/saveNopass")
	@ResponseBody
	public AjaxResult saveNopass(WxUserInfoApply wxUserInfoApply){
		return toAjax(wxUserInfoApplyService.saveNopass(wxUserInfoApply));
	}
}
