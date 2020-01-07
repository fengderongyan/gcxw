package com.ruoyi.mobile.weixin.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.ResultUtils;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;
import com.ruoyi.framework.web.service.BaseService;
import com.ruoyi.mobile.weixin.mapper.XqManageMapper;
import com.ruoyi.project.system.dept.domain.Dept;

/**
 * @descripton : 小区信息获取逻辑层
 * @author: 张成才
 * @date: 2019年12月16日 上午10:52:46
 */
@Service
public class XqManageService extends BaseService{

	@Autowired
	private XqManageMapper xqManageMapper;
	
	/**
	 * @descripton 获取小区List
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:08:25
	 */
	public List getXqList() {
		return xqManageMapper.getXqList();
	}
	
	/**
	 * @descripton 获取楼栋
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:42:19
	 */
	public List getFloorList(PageData pd) {
		return xqManageMapper.getFloorList(pd);
	}
	
	/**
	 * @descripton 获取单元列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:42:23
	 */
	public List getUnitList(PageData pd) {
		return xqManageMapper.getUnitList(pd);
	}
	
	/**
	 * @descripton 获取门牌列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:50:08
	 */
	public List getDoorList(PageData pd) {
		return xqManageMapper.getDoorList(pd);
	}
	
	/**
	 * @descripton 获取通告列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:07:56
	 */
	public List getNoticeList(PageData pd) {
		String deptId = this.getWxUser().getNowDeptId() + "";
		pd.put("deptId", deptId);
		return xqManageMapper.getNoticeList(pd);
	}
	
	/**
	 * @descripton 获取通告内容
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:23:22
	 */
	public PageData getNoticeInfo(PageData pd) {
		return xqManageMapper.getNoticeInfo(pd);
	}
	
	/**
	 * @descripton 更新阅读次数
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:30:08
	 */
	public int updateReadNum(PageData pd){
		return xqManageMapper.updateReadNum(pd);
	}
	
	/**
	 * @descripton 获取急事速办列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:59:40
	 */
	public List getJssbList(PageData pd) {
		String deptId = this.getWxUser().getNowDeptId() + "";
		pd.put("deptId", deptId);
		return xqManageMapper.getJssbList(pd);
	}

	/**
	 * @descripton 获取急事速办详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午3:53:26
	 */
	public PageData getJssbInfo(PageData pd) {
		return xqManageMapper.getJssbInfo(pd);
	}
	
	/**
	 * @descripton 获取维修类型列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:10:41
	 */
	public List getWxTypeList(String type) {
		return xqManageMapper.getWxTypeList(type);
	}
	
	/**
	 * @descripton 提交投诉信息
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:40:21
	 */
	public int saveTsInfo(PageData pd){
		pd.put("presentedId", this.getWxUser().getOpenid());
		pd.put("presentedDept", this.getWxUser().getNowDeptId() + "");
		return xqManageMapper.saveTsInfo(pd);
	}
	
	/**
	 * @descripton 获取投诉列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:25:16
	 */
	public List getTsInfoList(PageData pd) {
		pd.put("presentedId", this.getWxUser().getOpenid());
		return xqManageMapper.getTsInfoList(pd);
	}
	
	/**
	 * @descripton 获取投诉/建议信息
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:39:58
	 */
	public PageData getTsInfo(PageData pd) {
		return xqManageMapper.getTsInfo(pd);
	}
	
	/**
	 * @descripton 发布二手信息
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午10:43:33
	 */
	public int saveEsBusInfo(PageData pd){
		pd.put("presentedId", this.getWxUser().getOpenid());
		pd.put("presentedDept", this.getWxUser().getNowDeptId() + "");
		pd.put("presentedMobile", this.getWxUser().getPhone() + "");
		return xqManageMapper.saveEsBusInfo(pd);
	}
	
	/**
	 * @descripton 发布二手信息（保存头部图片）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午10:56:30
	 */
	public int saveEsBusBanner(String uuId, String bannerUrl){
		PageData pd = new PageData();
		pd.put("uuId", uuId);
		pd.put("imgUrl", bannerUrl);
		return xqManageMapper.saveEsBusBanner(pd);
	}
	
	/**
	 * @descripton 发布二手信息（保存介绍图片）
	 * @param @param uuId
	 * @param @param bannerUrl
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:10:59
	 */
	public int saveEsBusImg(String uuId, String imgUrl){
		PageData pd = new PageData();
		pd.put("uuId", uuId);
		pd.put("imgUrl", imgUrl);
		return xqManageMapper.saveEsBusImg(pd);
	}
	
	/**
	 * @descripton 获取二手商品列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:35:35
	 */
	public List getEsBusInfoList(PageData pd) {
		pd.put("presentedDept", this.getWxUser().getNowDeptId());
		return xqManageMapper.getEsBusInfoList(pd);
	}
	
	/**
	 * @descripton 获取二手商品列表（自己）
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:54:19
	 */
	public List getEsBusInfoListSelf(PageData pd) {
		pd.put("presentedId", this.getWxUser().getOpenid());
		return xqManageMapper.getEsBusInfoListSelf(pd);
	}
	
	/**
	 * @descripton 获取商品详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午1:38:42
	 */
	public PageData getErBusInfo(PageData pd) {
		return xqManageMapper.getErBusInfo(pd);
	}
	
	/**
	 * @descripton 报修信息保存
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午2:12:01
	 */
	public int saveBxInfo(PageData pd){
		pd.put("presentedId", this.getWxUser().getOpenid());
		pd.put("presentedDept", this.getWxUser().getNowDeptId() + "");
		pd.put("presentedMobile", this.getWxUser().getPhone());
		return xqManageMapper.saveBxInfo(pd);
	}
	
	/**
	 * @descripton 获取符合条件的推送人
	 * @param @param pd
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午2:26:38
	 */
	public String getTsOpenids(PageData pd){
		pd.put("presentedDept", this.getWxUser().getNowDeptId() + "");
		return xqManageMapper.getTsOpenids(pd);
	}
	
	/**
	 * @descripton 获取我的报修列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:03:25
	 */
	public List getMyBxInfoList(PageData pd) {
		pd.put("presentedId", this.getWxUser().getOpenid());
		return xqManageMapper.getMyBxInfoList(pd);
	}
	
	/**
	 * @descripton 获取报修详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:14:27
	 */
	public PageData getBxInfo(PageData pd) {
		return xqManageMapper.getBxInfo(pd);
	}
	
	/**
	 * @descripton 报修信息结束
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:23:39
	 */
	public int endBxInfo(PageData pd){
		return xqManageMapper.endBxInfo(pd);
	}
	
	/**
	 * @descripton 报修信息追加
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:30:00
	 */
	public int appendBxInfo(PageData pd){
		return xqManageMapper.appendBxInfo(pd);
	}
	
	/**
	 * @descripton 获取代缴费列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午9:17:29
	 */
	public List getMyWaitFeeList(PageData pd) {
		String openid = this.getWxUser().getOpenid();
		pd = xqManageMapper.getSomeInfo(openid);
		return xqManageMapper.getMyWaitFeeList(pd);
	}
	
	/**
	 * @descripton 获取物业费详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:41:32
	 */
	public PageData getFeeInfo(PageData pd) {
		return xqManageMapper.getFeeBaseInfo(pd);
	}
	
	/**
	 * @descripton 获取物业费详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:47:29
	 */
	public List getFeeDetail(PageData pd){
		return xqManageMapper.getFeeDetail(pd);
	}
	/**
	 * @descripton 更新商户订单号
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:20:39
	 */
	public int updateOutTradeNo(PageData pd){
		return xqManageMapper.updateOutTradeNo(pd);
	}
	
	/**
	 * @descripton 更新订单完成相关信息
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:56:47
	 */
	public int updatePayStateInfo(PageData pd){
		return xqManageMapper.updatePayStateInfo(pd);
	}
	
	/**
	 * @descripton 获取成功支付的订单相关信息
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午3:13:44
	 */
	public PageData getPayInfo(PageData pd) {
		return xqManageMapper.getPayInfo(pd);
	}
	
	/**
	 * @descripton 更新订单完成相关信息（物业）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:56:47
	 */
	public int updatePayState(PageData pd){
		return xqManageMapper.updatePayState(pd);
	}
	
	/**
	 * @descripton 更新订单完成相关信息（停车）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:56:47
	 */
	public int updatePayState1(PageData pd){
		return xqManageMapper.updatePayState1(pd);
	}
	
	/**
	 * @descripton 获取我的付费列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2020年1月6日 上午10:53:48
	 */
	public List getMyPayFeeList(PageData pd) {
		return xqManageMapper.getMyPayFeeList(pd);
	}
	
	
}
