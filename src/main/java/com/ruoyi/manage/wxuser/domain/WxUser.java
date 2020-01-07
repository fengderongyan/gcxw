package com.ruoyi.manage.wxuser.domain;

import java.util.Date;

import com.ruoyi.framework.web.domain.BaseEntity;

public class WxUser extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	private Long wxuserId;
	private String openid;
	private String name;
	private String phone;
	private Date birthday;
	private Long nowDeptId;
	private String nowDeptName;
	private String token;
	
	public String getNowDeptName() {
		return nowDeptName;
	}
	public void setNowDeptName(String nowDeptName) {
		this.nowDeptName = nowDeptName;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public Long getNowDeptId() {
		return nowDeptId;
	}
	public void setNowDeptId(Long nowDeptId) {
		this.nowDeptId = nowDeptId;
	}
	public Long getWxuserId() {
		return wxuserId;
	}
	public void setWxuserId(Long wxuserId) {
		this.wxuserId = wxuserId;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
}
