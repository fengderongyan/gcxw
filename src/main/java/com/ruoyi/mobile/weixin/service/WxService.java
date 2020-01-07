package com.ruoyi.mobile.weixin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.alibaba.druid.support.json.JSONUtils;
import com.ruoyi.common.utils.HttpClient;


@Service
public class WxService {
	
	@Value("${weixin.appid}")
	private String weixinAppId;
	
	@Value("${weixin.appsecret}")
	private String weixinAppsecret;
	
	public String getOpenid(String js_code){
	    try {
	      String jscode2session_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code".replace("APPID", weixinAppId).replace("SECRET", weixinAppsecret).replace("CODE", js_code);
	      HttpClient httpClient = new HttpClient(jscode2session_url);
	      httpClient.setHttps(true);
	      httpClient.get();
	      String result = httpClient.getContent();
	      Map resultMap = (Map)JSONUtils.parse(result);
	      String openid = (String)resultMap.get("openid");
	      return openid;
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return "";
	  }

}
