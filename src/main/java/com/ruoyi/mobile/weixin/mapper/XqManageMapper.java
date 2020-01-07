package com.ruoyi.mobile.weixin.mapper;

import java.util.List;

import com.ruoyi.common.utils.PageData;

public interface XqManageMapper {

	/**
	 * @descripton 获取小区list
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:07:04
	 */
	public List getXqList();
	
	/**
	 * @descripton 获取楼栋List
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 上午11:42:37
	 */
	public List getFloorList(PageData pd);
	
	/**
	 * @descripton 获取单元列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:42:48
	 */
	public List getUnitList(PageData pd);
	
	/**
	 * @descripton 获取门牌列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午1:50:37
	 */
	public List getDoorList(PageData pd);
	
	/**
	 * @descripton 获取公告/通知列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:12:52
	 */
	public List getNoticeList(PageData pd);
	
	/**
	 * @descripton 获取通告内容
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:24:00
	 */
	public PageData getNoticeInfo(PageData pd);
	
	/**
	 * @descripton 更新阅读次数（+1）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午2:30:41
	 */
	public int updateReadNum(PageData pd);
	
	/**
	 * @descripton 获取急事速办列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午3:00:14
	 */
	public List getJssbList(PageData pd);
	
	/**
	 * @descripton 急事速办详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午3:53:56
	 */
	public PageData getJssbInfo(PageData pd);
	
	/**
	 * @descripton 获取维修类型列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:12:08
	 */
	public List getWxTypeList(String type);
	
	/**
	 * @descripton 提交投诉/建议信息
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午4:40:50
	 */
	public int saveTsInfo(PageData pd);
	
	/**
	 * @descripton 获取投诉列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:25:45
	 */
	public List getTsInfoList(PageData pd);
	
	/**
	 * @descripton 获取投诉/建议信息
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月16日 下午5:40:29
	 */
	public PageData getTsInfo(PageData pd);
	
	/**
	 * @descripton 发布二手信息(基本信息)
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午10:44:19
	 */
	public int saveEsBusInfo(PageData pd);
	
	/**
	 * @descripton 保存二手信息（头部图片）
	 * @param @param array
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午10:53:58
	 */
	public int saveEsBusBanner(PageData pd);
	
	/**
	 * @descripton 保存二手信息（介绍图片）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:12:28
	 */
	public int saveEsBusImg(PageData pd);
	
	/**
	 * @descripton 获取二手商品列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:36:20
	 */
	public List getEsBusInfoList(PageData pd);
	
	/**
	 * @descripton 获取二手商品列表（自己）
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 上午11:54:07
	 */
	public List getEsBusInfoListSelf(PageData pd);
	
	/**
	 * @descripton 获取商品详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午1:39:08
	 */
	public PageData getErBusInfo(PageData pd);
	
	/**
	 * @descripton 报修信息保存
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午2:13:28
	 */
	public int saveBxInfo(PageData pd);
	
	/**
	 * @descripton 获取符合条件的推送人
	 * @param @param pd
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午2:27:18
	 */
	public String getTsOpenids(PageData pd);
	
	/**
	 * @descripton 获取我的报修列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:04:14
	 */
	public List getMyBxInfoList(PageData pd);
	
	/**
	 * @descripton 获取报修详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:15:17
	 */
	public PageData getBxInfo(PageData pd);
	
	/**
	 * @descripton 报修信息结束
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:22:53
	 */
	public int endBxInfo(PageData pd);
	
	/**
	 * @descripton 追加报修内容
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月17日 下午3:29:15
	 */
	public int appendBxInfo(PageData pd);
	
	/**
	 * @descripton 获取相关楼栋信息
	 * @param @param openId
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午9:27:59
	 */
	public PageData getSomeInfo(String openId);
	
	/**
	 * @descripton 获取待付款列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午9:37:37
	 */
	public List getMyWaitFeeList(PageData pd);
	
	/**
	 * @descripton 获取物业费详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:41:59
	 */
	public PageData getFeeBaseInfo(PageData pd);
	
	/**
	 * @descripton 获取物业费详情
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:47:56
	 */
	public List getFeeDetail(PageData pd);
	
	/**
	 * @descripton 更新商户订单号
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:21:20
	 */
	public int updateOutTradeNo(PageData pd);
	
	/**
	 * @descripton 更新订单完成相关信息
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:57:27
	 */
	public int updatePayStateInfo(PageData pd);
	
	/**
	 * @descripton 获取成功支付的订单相关信息
	 * @param @param pd
	 * @param @return
	 * @return PageData  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午3:14:24
	 */
	public PageData getPayInfo(PageData pd); 
	/**
	 * @descripton 更新订单完成状态（物业）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:57:27
	 */
	public int updatePayState(PageData pd);
	
	/**
	 * @descripton 更新订单完成状态（停车）
	 * @param @param pd
	 * @param @return
	 * @return int  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 下午2:57:27
	 */
	public int updatePayState1(PageData pd);
	
	/**
	 * @descripton 获取缴费列表
	 * @param @param pd
	 * @param @return
	 * @return List  
	 * @throws 
	 * @author: 张成才
	 * @date: 2020年1月6日 上午10:55:21
	 */
	public List getMyPayFeeList(PageData pd);
}
