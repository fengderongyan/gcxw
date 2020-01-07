package com.ruoyi.manage.zxbannervideo.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import com.ruoyi.project.system.dept.domain.Dept;

public class ZxBannerVideoDept extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	private Long zxBannerVideoDeptId;
	
	private Long zxBannerVideoId;
	
	private Long deptId;
	
	private Dept dept;

	public Long getZxBannerVideoDeptId() {
		return zxBannerVideoDeptId;
	}

	public void setZxBannerVideoDeptId(Long zxBannerVideoDeptId) {
		this.zxBannerVideoDeptId = zxBannerVideoDeptId;
	}

	public Long getZxBannerVideoId() {
		return zxBannerVideoId;
	}

	public void setZxBannerVideoId(Long zxBannerVideoId) {
		this.zxBannerVideoId = zxBannerVideoId;
	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}
	
}
