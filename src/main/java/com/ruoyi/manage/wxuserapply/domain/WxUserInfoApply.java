package com.ruoyi.manage.wxuserapply.domain;

import java.util.Date;

import com.ruoyi.framework.web.domain.BaseEntity;

public class WxUserInfoApply extends BaseEntity{
	private static final long serialVersionUID = 1L;

	private Long wxuserInfoApplyId;
	private String openid;
	private String name;
	private String phone;
	private Date birthday;
	private Long deptId;
	private Integer buildNum;
	private Integer unitNum;
	private Integer doorNum;
	private String deptName;
	private Long applyStatus;
	private Long isAdddept;
	private String remark;
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Long getIsAdddept() {
		return isAdddept;
	}
	public void setIsAdddept(Long isAdddept) {
		this.isAdddept = isAdddept;
	}
	public Long getApplyStatus() {
		return applyStatus;
	}
	public void setApplyStatus(Long applyStatus) {
		this.applyStatus = applyStatus;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public Long getWxuserInfoApplyId() {
		return wxuserInfoApplyId;
	}
	public void setWxuserInfoApplyId(Long wxuserInfoApplyId) {
		this.wxuserInfoApplyId = wxuserInfoApplyId;
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
	public Long getDeptId() {
		return deptId;
	}
	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	public Integer getBuildNum() {
		return buildNum;
	}
	public void setBuildNum(Integer buildNum) {
		this.buildNum = buildNum;
	}
	public Integer getUnitNum() {
		return unitNum;
	}
	public void setUnitNum(Integer unitNum) {
		this.unitNum = unitNum;
	}
	public Integer getDoorNum() {
		return doorNum;
	}
	public void setDoorNum(Integer doorNum) {
		this.doorNum = doorNum;
	}
}
