package com.ruoyi.mobile.weixin.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.JwtUtil;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.ResultUtils;
import com.ruoyi.common.utils.weixin.WeixinUtils;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.domain.WxUserFloor;
import com.ruoyi.manage.wxuser.service.IWxUserService;
import com.ruoyi.manage.wxuserapply.domain.WxUserInfoApply;
import com.ruoyi.manage.wxuserapply.service.IWxUserInfoApplyService;
import com.ruoyi.mobile.weixin.service.WxLoginService;
import com.ruoyi.mobile.weixin.service.WxService;
import com.ruoyi.project.service.RedisService;

import io.jsonwebtoken.Claims;

@RestController
@RequestMapping("/mobile/weixin")
public class WxLoginController extends BaseController{

	@Autowired
	private RedisService redisService;
	@Autowired
	private WxService wxService;
	@Autowired
	private IWxUserService wxUserService;
	@Autowired
	private IWxUserInfoApplyService wxUserInfoApplyService;
	@Autowired
	private WxLoginService wxLoginService;
	@Value("${weixin.appid}")
	private String weixinAppId;
	
	@RequestMapping("/index")
	public ModelAndView index(){
		//注解为@RestController，重定向不能用string类型返回，因为RestController默认加了@ResponseBody
		//return new ModelAndView("redirect:http://jstdkj.cn/jz/dist/demos/index_first.html");
		return new ModelAndView("redirect:https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + weixinAppId + "&redirect_uri=https%3A%2F%2Fgcxwhtml.altmoose.com%2Fdist%2Fdemos%2Findex_first.html&response_type=code" 
				+ "&scope=snsapi_userinfo&connect_redirect=1#wechat_redirect");
	}
	

	/**
	 * 描述：接收code，换取openid，返回用户基础信息
	 * @return
	 * @author yanbs
	 * @Date 2019-12-11
	 */
	@RequestMapping("/login")
	public Map login(String code){
		if(StringUtils.isBlank(code)){
			return ResultUtils.returnError(12001, "无法获取code！");
		}
		String openid = wxService.getOpenid(code);
		Map info = WeixinUtils.getInfo(openid);
		String headimgurl = (String)info.get("headimgurl");
		String nickname = (String)info.get("nickname");
//		String openid = "qwqwewqq3r135s1133";
//		String headimgurl = "123";
//		String nickname = "456";
		String token = JwtUtil.createWxJWT(60*60*24*30*1000, openid, Constants.JWT_TOKEN_KEY);
		WxUser wxUser = wxUserService.selectWxUserByOpenid(openid);
		PageData pd = new PageData();
		pd.put("token", token);
		pd.put("headimgurl", headimgurl);
		pd.put("nickname", nickname);
		if(wxUser == null){//未注册过
			pd.put("isDeptBind", 0);//未绑定过小区
			pd.put("isInfoDone", 0);//未完善信息
		}else{//基础信息存在
			WxUserFloor wxUserFloor = wxUserService.selectBindFloorByOpenid(openid);
			if(wxUserFloor == null){//信息未完善
				Integer isHas = wxUserInfoApplyService.isHasApplyInfo(wxUser);
				if(isHas == 0){//未申请
					pd.put("isDeptBind", 1);
					pd.put("isInfoDone", 0);
				}else{
					pd.put("isDeptBind", 1);
					pd.put("isInfoDone", 2);//信息审核中
				}
			}else{//已完善
				PageData baseInfo = new PageData();
				pd.put("isDeptBind", 1);
				pd.put("isInfoDone", 1);
				baseInfo.put("name", wxUser.getName());
				baseInfo.put("phone", wxUser.getPhone());
				baseInfo.put("birthday", DateUtils.dateTime(wxUser.getBirthday()));
				baseInfo.put("nowDeptId", wxUser.getNowDeptId());
				baseInfo.put("nowDeptName", wxUser.getNowDeptName());
				baseInfo.put("buildNum", wxUserFloor.getBuildNum());
				baseInfo.put("unitNum", wxUserFloor.getUnitNum());
				baseInfo.put("doorNum", wxUserFloor.getDoorNum());
				pd.put("baseInfo", baseInfo);//基础信息
			}
			wxUser.setToken(token);
			String tokenUserKey = Constants.TOKEN_KEY_FRIST + openid;
			boolean isExistes =  redisService.hasKey(tokenUserKey);
			if(isExistes){//若存在，则删除
				redisService.delete(tokenUserKey);
			}
			redisService.addObjectWithTime(tokenUserKey, wxUser, 60*60*24*30L);
		}
		
		return ResultUtils.returnOk(pd);
	}
	
	/**
	 * 描述：绑定小区
	 * @param nowDeptId
	 * @return
	 * @author yanbs
	 * @Date 2019-12-13
	 */
	@RequestMapping("/binDept")
	public Map bindDept(Long deptId){
		try {
			if("".equals(deptId+"")){
				return ResultUtils.returnError(12001, "deptId不能为空");
			}
			String token = this.getRequest().getHeader("token");
			if(token == null || "".equals(token)){
				token = this.getRequest().getParameter("token");
			}
			if(StringUtils.isBlank(token)){//获取不到token
	
				return ResultUtils.returnError(11004, "token校验失败");		
			}
			boolean isVerify = JwtUtil.isVerify(token, Constants.JWT_TOKEN_KEY);
			if(!isVerify){//token 签名不合法
				return ResultUtils.returnError(11004, "签名不合法");
			}
			Claims tokenInfo =  JwtUtil.parseJWT(token, Constants.JWT_TOKEN_KEY);
			String openid = (String)tokenInfo.get("openid");
			Integer isBind = wxLoginService.selectIsBind(openid);
			if(isBind == 1){
				return ResultUtils.returnError(12002, "用户已存在");
			}
			wxLoginService.bindDept(openid, deptId);
			
			WxUser wxUser = wxUserService.selectWxUserByOpenid(openid);
			wxUser.setToken(token);
			String tokenUserKey = Constants.TOKEN_KEY_FRIST + openid;
			boolean isExistes =  redisService.hasKey(tokenUserKey);
			if(isExistes){//若存在，则删除
				redisService.delete(tokenUserKey);
			}
			redisService.addObjectWithTime(tokenUserKey, wxUser, 60*60*24*30L);
			PageData pd = new PageData();
			PageData baseInfo = new PageData();
			pd.put("isDeptBind", 1);
			pd.put("isInfoDone", 0);
			baseInfo.put("nowDeptId", wxUser.getNowDeptId());
			baseInfo.put("nowDeptName", wxUser.getNowDeptName());
			pd.put("baseInfo", baseInfo);
			return ResultUtils.returnOk(pd);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("/finishBaseInfo")
	public Map finishBaseInfo(){
		try {
			PageData pd = this.getPageData();
			String name = pd.getString("name");
			String phone = pd.getString("phone");
			String birthday = pd.getString("birthday");
			String deptId = pd.getString("deptId");
			String buildNum = pd.getString("buildNum");
			String unitNum = pd.getString("unitNum");
			String doorNum = pd.getString("doorNum");
			if("".equals(name)){
				return ResultUtils.returnError(12001, "name不能为空");
			}
			if("".equals(phone)){
				return ResultUtils.returnError(12001, "phone不能为空");
			}
			if("".equals(birthday)){
				return ResultUtils.returnError(12001, "birthday不能为空");
			}
			if("".equals(deptId)){
				return ResultUtils.returnError(12001, "deptId不能为空");
			}
			if("".equals(buildNum)){
				return ResultUtils.returnError(12001, "buildNum不能为空");
			}
			if("".equals(unitNum)){
				return ResultUtils.returnError(12001, "unitNum不能为空");
			}
			if("".equals(doorNum)){
				return ResultUtils.returnError(12001, "doorNum不能为空");
			}
			String token = this.getRequest().getHeader("token");
			Claims tokenInfo =  JwtUtil.parseJWT(token, Constants.JWT_TOKEN_KEY);
			String openid = (String)tokenInfo.get("openid");
			pd.put("openid", openid);
			Integer isExists = wxLoginService.selectUserFloorIsExists(pd);//查询该用户是否已申请过该房间
			if(isExists == 1){
				
				return ResultUtils.returnError(12002, "您已提交过该房间信息");
			}
			wxLoginService.finishBaseInfo(pd);
			WxUser wxUser = wxUserService.selectWxUserByOpenid(openid);
			wxUser.setToken(token);
			String tokenUserKey = Constants.TOKEN_KEY_FRIST + openid;
			boolean isExistes =  redisService.hasKey(tokenUserKey);
			if(isExistes){//若存在，则删除
				redisService.delete(tokenUserKey);
			}
			redisService.addObjectWithTime(tokenUserKey, wxUser, 60*60*24*30L);
			PageData returnInfo = new PageData();
			PageData baseInfo = new PageData();
			returnInfo.put("isDeptBind", 1);
			returnInfo.put("isInfoDone", 2);
			/*baseInfo.put("name", wxUser.getName());
			baseInfo.put("phone", wxUser.getPhone());
			baseInfo.put("birthday", DateUtils.dateTime(wxUser.getBirthday()));*/
			baseInfo.put("nowDeptId", wxUser.getNowDeptId());
			baseInfo.put("nowDeptName", wxUser.getNowDeptName());
			/*baseInfo.put("buildNum", buildNum);
			baseInfo.put("unitNum",unitNum);
			baseInfo.put("doorNum", doorNum);*/
			returnInfo.put("baseInfo", baseInfo);
			return ResultUtils.returnOk(returnInfo);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
}
