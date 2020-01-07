package com.ruoyi.manage.zxforum.domain;

import com.ruoyi.framework.web.domain.BaseEntity;

public class ZxForumImg extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	private Long forumImgId;
	
	private Long forumId;
	
	private String imgUrl;

	public Long getForumImgId() {
		return forumImgId;
	}

	public void setForumImgId(Long forumImgId) {
		this.forumImgId = forumImgId;
	}

	public Long getForumId() {
		return forumId;
	}

	public void setForumId(Long forumId) {
		this.forumId = forumId;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

}
