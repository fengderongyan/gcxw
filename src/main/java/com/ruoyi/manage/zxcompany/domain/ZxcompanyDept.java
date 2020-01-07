package com.ruoyi.manage.zxcompany.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class ZxcompanyDept extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	private Long zxCompanyDeptId;
	private Long zxCompanyId;
	private Long deptId;
	public Long getZxCompanyDeptId() {
		return zxCompanyDeptId;
	}
	public void setZxCompanyDeptId(Long zxCompanyDeptId) {
		this.zxCompanyDeptId = zxCompanyDeptId;
	}
	public Long getZxCompanyId() {
		return zxCompanyId;
	}
	public void setZxCompanyId(Long zxCompanyId) {
		this.zxCompanyId = zxCompanyId;
	}
	public Long getDeptId() {
		return deptId;
	}
	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

}
