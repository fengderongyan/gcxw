package com.ruoyi.framework.interceptor.mobile.weixin;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.session.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.exception.user.CaptchaException;
import com.ruoyi.common.exception.user.RoleBlockedException;
import com.ruoyi.common.exception.user.UserBlockedException;
import com.ruoyi.common.exception.user.UserNotExistsException;
import com.ruoyi.common.exception.user.UserPasswordNotMatchException;
import com.ruoyi.common.exception.user.UserPasswordRetryLimitExceedException;
import com.ruoyi.common.utils.JwtUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.LoginService;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.project.service.RedisService;
import com.ruoyi.project.system.user.domain.User;

import io.jsonwebtoken.Claims;

@Component
public class WxUrlInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	private RedisService redisService;
	
	private static final Logger log = LoggerFactory.getLogger(WxUrlInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		String url = request.getRequestURL().toString();
		if(!"".equals(Constants.MOBILE_URL) && StringUtils.isContains(url, Constants.MOBILE_URL.split(","))){//不拦截的移动端路径
			return true;
		}
		if(url.indexOf("/mobile/weixin/") > -1){
			String token = request.getHeader("token");
			if(token == null || "".equals(token)){
				token = request.getParameter("token");
			}
			if(StringUtils.isBlank(token)){//获取不到token
				Map errorMap = new HashMap();
				errorMap.put("errorCode", 11004);
				errorMap.put("errorInfo", "token校验失败");
				response.setHeader("Content-type", "text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().print(JSONObject.toJSON(errorMap));
				return false;		
			}
			boolean isVerify = JwtUtil.isVerify(token, Constants.JWT_TOKEN_KEY);
			if(!isVerify){//token 签名不合法
				Map errorMap = new HashMap();
				errorMap.put("errorCode", 11004);
				errorMap.put("errorInfo", "token Invalid!");
				response.setHeader("Content-type", "text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().print(JSONObject.toJSON(errorMap));
				return false;
			}
			Claims tokenInfo =  JwtUtil.parseJWT(token, Constants.JWT_TOKEN_KEY);
			String wxUserRedisKey = Constants.TOKEN_KEY_FRIST + tokenInfo.get("openid");
			boolean hasKey = redisService.hasKey(wxUserRedisKey);
			WxUser wxUser = null;
			boolean isHasToken = false;
			if(hasKey){//缓存中KEY值存在
				wxUser = (WxUser)redisService.getObject(wxUserRedisKey);
				isHasToken = token.equals(wxUser.getToken()) ? true : false;
			}else{
				Map errorMap = new HashMap();
				errorMap.put("errorCode", 11004);
				errorMap.put("errorInfo", "token校验失败");
				response.setHeader("Content-type", "text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().print(JSONObject.toJSON(errorMap));
				return false;
			}
			if(isHasToken){
				Session session  = SecurityUtils.getSubject().getSession();
				session.setAttribute("wxUser", wxUser);
			}else{
				Map errorMap = new HashMap();
				errorMap.put("errorCode", 11004);
				errorMap.put("errorInfo", "token校验失败");
				response.setHeader("Content-type", "text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().print(JSONObject.toJSON(errorMap));
				return false;
			}
	            
		}
		
		return true;
	}
}
