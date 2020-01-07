package com.ruoyi.mobile.weixin.controller;

import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.druid.util.StringUtils;
import com.github.wxpay.sdk.WXPayUtil;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.ResultUtils;
import com.ruoyi.common.utils.StringHelper;
import com.ruoyi.common.utils.weixin.WeixinUtils;
import com.ruoyi.common.utils.weixin.entity.TemplateMsg;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.manage.wxuser.domain.WxUserFloor;
import com.ruoyi.manage.wxuser.service.IWxUserService;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.manage.zxbannervideo.service.IZxBannerVideoService;
import com.ruoyi.mobile.weixin.service.XqManageService;
import com.ruoyi.mobile.weixin.service.ZxService;

import net.bytebuddy.asm.Advice.This;

/**
 * @descripton : 小区相关信息获取
 * @author: 张成才
 * @date: 2019年12月16日 上午10:52:24
 */
@RestController
@RequestMapping("mobile/weixin/xqmanage")
public class XqManageController extends BaseController{

	@Autowired
	private XqManageService xqManageService;
	@Autowired
	private IWxUserService wxUserService;
	
	/**
	 * @descripton 获取小区ID（全部-按名称排序）
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:23:25
	 */
	@RequestMapping("/getXqList")
	@ResponseBody
	public Map getXqList(){
		try {
			List list = xqManageService.getXqList();
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取楼栋号(根据小区ID)
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:37:30
	 */
	@RequestMapping("/getFloorList")
	@ResponseBody
	public Map getFloorList(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("deptId")))
				return ResultUtils.returnError(12001, "无法获取参数：deptId");
			List list = xqManageService.getFloorList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取单元列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:41:18
	 */
	@RequestMapping("/getUnitList")
	@ResponseBody
	public Map getUnitList(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("deptId")))
				return ResultUtils.returnError(12001, "无法获取参数：deptId");
			if(null == pd || StringUtils.isEmpty(pd.getString("buildNum")))
				return ResultUtils.returnError(12001, "无法获取参数：buildNum");
			List list = xqManageService.getUnitList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取门牌号列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:49:20
	 */
	@RequestMapping("/getDoorList")
	@ResponseBody
	public Map getDoorList(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("deptId")))
				return ResultUtils.returnError(12001, "无法获取参数：deptId");
			if(null == pd || StringUtils.isEmpty(pd.getString("buildNum")))
				return ResultUtils.returnError(12001, "无法获取参数：buildNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("unitNum")))
				return ResultUtils.returnError(12001, "无法获取参数：unitNum");
			List list = xqManageService.getDoorList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取小区通告列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:02:24
	 */
	@RequestMapping("/getNoticeList")
	@ResponseBody
	public Map getNoticeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getNoticeList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取公告信息
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:22:02
	 */
	@RequestMapping("/getNoticeInfo")
	@ResponseBody
	@Transactional
	public Map getNoticeInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			xqManageService.updateReadNum(pd);
			return ResultUtils.returnOk(xqManageService.getNoticeInfo(pd));
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 急事速办列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:40:06
	 */
	@RequestMapping("/getJssbList")
	@ResponseBody
	public Map getJssbList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getJssbList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取急事速办详情
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午3:52:07
	 */
	@RequestMapping("/getJssbInfo")
	@ResponseBody
	public Map getJssbInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			return ResultUtils.returnOk(xqManageService.getJssbInfo(pd));
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取维修类型列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:10:01
	 */
	@RequestMapping("/getTsTypeList")
	@ResponseBody
	public Map getTsTypeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			List list = xqManageService.getWxTypeList("sys_ts_type");
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 投诉/建议信息保存
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:36:02
	 */
	@RequestMapping("/saveTsInfo")
	@ResponseBody
	public Map saveTsInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("type")))
				return ResultUtils.returnError(12001, "无法获取参数：type");
			if(null == pd || StringUtils.isEmpty(pd.getString("content")))
				return ResultUtils.returnError(12001, "无法获取参数：content");
			xqManageService.saveTsInfo(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 投诉列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:23:19
	 */
	@RequestMapping("/getTsTsInfoList")
	@ResponseBody
	public Map getTsTsInfoList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getTsInfoList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取投诉/建议详情
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:39:25
	 */
	@RequestMapping("/getTsInfo")
	@ResponseBody
	public Map getTsInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			return ResultUtils.returnOk(xqManageService.getTsInfo(pd));
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取二手商品类型
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:10:01
	 */
	@RequestMapping("/getEsBusTypeList")
	@ResponseBody
	public Map getEsBusTypeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			List list = xqManageService.getWxTypeList("sys_essp_type");
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 发布二手商品
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午10:20:37
	 */
	@RequestMapping("/saveEsBusInfo")
	@ResponseBody
	@Transactional
	public Map saveEsBusInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			String uuId = UUID.randomUUID().toString().replace("-", "");
			pd.put("uuId", uuId);
			/*if(null == pd || StringUtils.isEmpty(pd.getString("type")))
				return ResultUtils.returnError(12001, "无法获取参数：type");*/
			if(null == pd || StringUtils.isEmpty(pd.getString("title")))
				return ResultUtils.returnError(12001, "无法获取参数：title");
			if(null == pd || StringUtils.isEmpty(pd.getString("introduced")))
				return ResultUtils.returnError(12001, "无法获取参数：introduced");
			if(null == pd || StringUtils.isEmpty(pd.getString("banner")))
				return ResultUtils.returnError(12001, "无法获取参数：banner");
			if(null == pd || StringUtils.isEmpty(pd.getString("imgs")))
				return ResultUtils.returnError(12001, "无法获取参数：imgs");
			String [] banner = pd.getString("banner").split(",");
			String [] imgs = pd.getString("imgs").split(",");
			for(String bannerValue : banner){//顶部图片
				xqManageService.saveEsBusBanner(uuId, bannerValue);
			}
			for(String imgValue : imgs){//主体介绍图片
				xqManageService.saveEsBusImg(uuId, imgValue);
			}
			xqManageService.saveEsBusInfo(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取二手商品列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:34:45
	 */
	@RequestMapping("/getEsBusInfoList")
	@ResponseBody
	public Map getEsBusInfoList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getEsBusInfoList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取二手商品列表(自己)
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:53:25
	 */
	@RequestMapping("/getEsBusInfoListSelf")
	@ResponseBody
	public Map getEsBusInfoListSelf(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getEsBusInfoListSelf(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取二手商品详情
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午1:37:25
	 */
	@RequestMapping("/getErBusInfo")
	@ResponseBody
	public Map getErBusInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			return ResultUtils.returnOk(xqManageService.getErBusInfo(pd));
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取报修类型
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午1:58:30
	 */
	@RequestMapping("/getWxTypeList")
	@ResponseBody
	public Map getWxTypeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			List list = xqManageService.getWxTypeList("sys_wx_type");
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 报修信息提交
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午2:04:47
	 */
	@RequestMapping("/saveBxInfo")
	@ResponseBody
	public Map saveBxInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("type")))
				return ResultUtils.returnError(12001, "无法获取参数：type");
			if(null == pd || StringUtils.isEmpty(pd.getString("appointment")))
				return ResultUtils.returnError(12001, "无法获取参数：appointment");
			if(null == pd || StringUtils.isEmpty(pd.getString("introduced")))
				return ResultUtils.returnError(12001, "无法获取参数：introduced");
			xqManageService.saveBxInfo(pd);
			//推送模板消息
			String openIds = xqManageService.getTsOpenids(pd);
			TemplateMsg tm = new TemplateMsg();
			tm.setFirst("您收到一条报修处理通知");
			tm.setKeyword1(this.getWxUser().getNowDeptName() + "--" + this.getWxUser().getName());
			tm.setKeyword2(this.getWxUser().getPhone());
			tm.setKeyword3("预约：" + pd.getString("appointment"));
			tm.setKeyword4(pd.getString("introduced"));
			tm.setRemark("请您尽快处理或联系业主");
			Map tsMap = tm.getGetApplyData();
			String [] openId = openIds.split(",");
			for(String tsOpenId : openId){
				WeixinUtils.sendWeappTemplateMsg(tsOpenId, "", tsMap);
			}
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取我的报修列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:02:48
	 */
	@RequestMapping("/getMyBxInfoList")
	@ResponseBody
	public Map getMyBxInfoList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getMyBxInfoList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 获取报修详情
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:14:01
	 */
	@RequestMapping("/getBxInfo")
	@ResponseBody
	public Map getBxInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			return ResultUtils.returnOk(xqManageService.getBxInfo(pd));
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 报修信息状态结束
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:22:02
	 */
	@RequestMapping("/endBxInfo")
	@ResponseBody
	public Map endBxInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			xqManageService.endBxInfo(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 追加报修信息
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:27:59
	 */
	@RequestMapping("/appendBxInfo")
	@ResponseBody
	public Map appendBxInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			PageData pd2 = xqManageService.getBxInfo(pd);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			if(null == pd || StringUtils.isEmpty(pd.getString("additional")))
				return ResultUtils.returnError(12001, "无法获取参数：additional");
			pd.put("type", pd2.getString("type"));
			pd.put("appointment", pd2.get("appointment") + "");
			pd.put("introduced", pd2.getString("introduced"));
			xqManageService.appendBxInfo(pd);
			//推送模板消息
			String openIds = xqManageService.getTsOpenids(pd);
			TemplateMsg tm = new TemplateMsg();
			tm.setFirst("您收到一条业主报修追加信息通知");
			tm.setKeyword1(this.getWxUser().getNowDeptName() + "--" + this.getWxUser().getName());
			tm.setKeyword2(this.getWxUser().getPhone());
			tm.setKeyword3("预约：" + pd.getString("appointment"));
			tm.setKeyword4(pd.getString("introduced"));
			tm.setRemark("业主追加：" + pd.getString("additional"));
			Map tsMap = tm.getGetApplyData();
			String [] openId = openIds.split(",");
			for(String tsOpenId : openId){
				WeixinUtils.sendWeappTemplateMsg(tsOpenId, "", tsMap);
			}
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 代缴费列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午9:14:56
	 */
	@RequestMapping("/getMyWaitFeeList")
	@ResponseBody
	public Map getMyWaitFeeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			startPage();
			List list = xqManageService.getMyWaitFeeList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 物业费详情
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:40:31
	 */
	@RequestMapping("/getFeeInfo")
	@ResponseBody
	public Map getFeeInfo(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			PageData map = xqManageService.getFeeInfo(pd);
			map.put("detail", xqManageService.getFeeDetail(pd));
			return ResultUtils.returnOk(map);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 立即缴费
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午10:11:07
	 */
	@RequestMapping("/payMyFee")
	@ResponseBody
	@Transactional
	public Map payMyFee(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("total_pay")))
				return ResultUtils.returnError(12001, "无法获取参数：total_pay");
			pd.put("totalPay", Float.valueOf(pd.getString("total_pay")) * 100 + "" );
			if(null == pd || StringUtils.isEmpty(pd.getString("out_trade_no")))
				return ResultUtils.returnError(12001, "无法获取参数：out_trade_no");
			if(null == pd || StringUtils.isEmpty(pd.getString("id")))
				return ResultUtils.returnError(12001, "无法获取参数：id");
			pd.put("openid", this.getWxUser().getOpenid());
			xqManageService.updateOutTradeNo(pd);
			Map resultMap = WeixinUtils.unifiedorder(pd);
			return ResultUtils.returnOk(resultMap);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	/**
	 * @descripton 微信支付通知
	 * @param @param request
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:47:18
	 */
	@RequestMapping(value="/WxPayReturn")
	@ResponseBody
	@Transactional
	public String WxPayReturn(HttpServletRequest request){
		try {
			PageData pd = new PageData(request);
			Map map = new HashMap();
			Map returnMap = new HashMap();
			String returnXml = "";
			BufferedReader reader = request.getReader();
			String line = "";
			StringBuffer inputString = new StringBuffer();
			while ((line = reader.readLine()) != null) {
				inputString.append(line);
			}
			request.getReader().close();
			map = WXPayUtil.xmlToMap(inputString.toString());
			System.out.println("map::" + map);
			String return_code = StringHelper.get(map, "return_code");//返回状态码
			String result_code = StringHelper.get(map, "result_code");//业务结果
			String total_fee = StringHelper.get(map, "total_fee");//付款金额（单位分）
			String out_trade_no = StringHelper.get(map, "out_trade_no");//商户订单号
			String time_end = StringHelper.get(map, "time_end");//支付完成时间
			if("SUCCESS".equals(return_code)){//成功接收
				if("SUCCESS".equals(result_code)){
					pd.put("out_trade_no", out_trade_no);
					pd.put("total_fee", total_fee);
					pd.put("time_end", time_end);
					xqManageService.updatePayStateInfo(pd);
					pd = xqManageService.getPayInfo(pd);
					if(pd.getString("type").equals("1")){
						xqManageService.updatePayState(pd);
					}
					else
						xqManageService.updatePayState1(pd);
					returnMap.put("return_code", "SUCCESS");
					returnMap.put("return_msg", "OK");
					returnXml = WXPayUtil.mapToXml(returnMap);
				}else{
					
				}
			}
			
			return returnXml;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @descripton 获取我的支付列表
	 * @param @param request
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2020年1月6日 上午10:48:23
	 */
	@RequestMapping("/getMyPayFeeList")
	@ResponseBody
	public Map getMyPayFeeList(HttpServletRequest request){
		try {
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(this.getWxUser().getOpenid());
			if(null == wxUserFloor)
				return ResultUtils.returnError(12002, "未完善信息");
			PageData pd = new PageData(request);
			if(null == pd || StringUtils.isEmpty(pd.getString("pageNum")))
				return ResultUtils.returnError(12001, "无法获取参数：pageNum");
			if(null == pd || StringUtils.isEmpty(pd.getString("pageSize")))
				return ResultUtils.returnError(12001, "无法获取参数：pageSize");
			pd.put("deptId", this.getWxUser().getNowDeptId());
			pd.put("buildNum", wxUserFloor.getBuildNum());
			pd.put("unitNum", wxUserFloor.getUnitNum());
			pd.put("doorNum", wxUserFloor.getDoorNum());
			startPage();
			List list = xqManageService.getMyPayFeeList(pd);
			return ResultUtils.returnOk(list);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台系统出错，请联系管理员");
		}
	}
	
	
}
