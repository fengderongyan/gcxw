package com.ruoyi.framework.web.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.utils.JwtUtil;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.project.service.RedisService;
import com.ruoyi.project.system.user.domain.User;

import io.jsonwebtoken.Claims;

@Component
public class BaseService {
	
	@Autowired
	private RedisService redisService;
	
	public User getSysUser()
    {
        return ShiroUtils.getSysUser();
    }

    public void setSysUser(User user)
    {
        ShiroUtils.setSysUser(user);
    }

    public Long getUserId()
    {
        return getSysUser().getUserId();
    }

    public String getLoginName()
    {
        return getSysUser().getLoginName();
    }
    
    /**
	 * 获取request
	 * @return
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	
	public WxUser getWxUser(){
		String token = getRequest().getHeader("token");
		if(token == null || "".equals(token)){
			token = getRequest().getParameter("token");
		}
		Claims tokenInfo =  JwtUtil.parseJWT(token, Constants.JWT_TOKEN_KEY);
		String wxUserRedisKey = Constants.TOKEN_KEY_FRIST + tokenInfo.get("openid");
		WxUser wxUser = (WxUser)redisService.getObject(wxUserRedisKey);
		return wxUser;
	}
	
	public String getOpenid(){
		return this.getWxUser().getOpenid();
	}

}
