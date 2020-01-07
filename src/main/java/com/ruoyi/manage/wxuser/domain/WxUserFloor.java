package com.ruoyi.manage.wxuser.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class WxUserFloor extends BaseEntity{
	private static final long serialVersionUID = 1L;

	private Long wxuserFloorId;
	private String openid;
	private Long deptId;
	private Integer isBind;
	private Integer buildNum;
	private Integer unitNum;
	private Integer doorNum;
	
	public Integer getDoorNum() {
		return doorNum;
	}
	public void setDoorNum(Integer doorNum) {
		this.doorNum = doorNum;
	}
	public Long getWxuserFloorId() {
		return wxuserFloorId;
	}
	public void setWxuserFloorId(Long wxuserFloorId) {
		this.wxuserFloorId = wxuserFloorId;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public Long getDeptId() {
		return deptId;
	}
	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	public Integer getIsBind() {
		return isBind;
	}
	public void setIsBind(Integer isBind) {
		this.isBind = isBind;
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
}
