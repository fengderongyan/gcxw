package com.ruoyi.manage.showhome.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class ShowHomeImg extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private Long showHomeImgId;
	private Long showHomeId;
	private String imgUrl;
	
	public Long getShowHomeImgId() {
		return showHomeImgId;
	}
	public void setShowHomeImgId(Long showHomeImgId) {
		this.showHomeImgId = showHomeImgId;
	}
	public Long getShowHomeId() {
		return showHomeId;
	}
	public void setShowHomeId(Long showHomeId) {
		this.showHomeId = showHomeId;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
}
