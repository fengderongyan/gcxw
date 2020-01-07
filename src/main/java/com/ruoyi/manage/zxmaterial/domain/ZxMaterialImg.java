package com.ruoyi.manage.zxmaterial.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class ZxMaterialImg extends BaseEntity{

	private static final long serialVersionUID = 1L;

	private Long materialImgId;
	
	private Long materialId;
	
	public Long getMaterialImgId() {
		return materialImgId;
	}

	public void setMaterialImgId(Long materialImgId) {
		this.materialImgId = materialImgId;
	}

	public Long getMaterialId() {
		return materialId;
	}

	public void setMaterialId(Long materialId) {
		this.materialId = materialId;
	}

	public String getDetailImgUrl() {
		return detailImgUrl;
	}

	public void setDetailImgUrl(String detailImgUrl) {
		this.detailImgUrl = detailImgUrl;
	}

	private String detailImgUrl;
}
