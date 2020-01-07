package com.ruoyi.manage.zxbannervideo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修首页视频管理对象 t_zx_banner_video
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public class ZxBannerVideo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long zxBannerVideoId;

    /** 封面 */
    @Excel(name = "封面")
    private String titleImgUrl;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 视频路径 */
    @Excel(name = "视频路径")
    private String videoUrl;

    /** 展示开关 */
    @Excel(name = "展示开关")
    private Long status;

    /** null */
    private Long flagDel;
    
    private Long videoTime;
    
    private String detail;

    public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Long getVideoTime() {
		return videoTime;
	}

	public void setVideoTime(Long videoTime) {
		this.videoTime = videoTime;
	}

	public void setZxBannerVideoId(Long zxBannerVideoId) 
    {
        this.zxBannerVideoId = zxBannerVideoId;
    }

    public Long getZxBannerVideoId() 
    {
        return zxBannerVideoId;
    }
    public void setTitleImgUrl(String titleImgUrl) 
    {
        this.titleImgUrl = titleImgUrl;
    }

    public String getTitleImgUrl() 
    {
        return titleImgUrl;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setVideoUrl(String videoUrl) 
    {
        this.videoUrl = videoUrl;
    }

    public String getVideoUrl() 
    {
        return videoUrl;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setFlagDel(Long flagDel) 
    {
        this.flagDel = flagDel;
    }

    public Long getFlagDel() 
    {
        return flagDel;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("zxBannerVideoId", getZxBannerVideoId())
            .append("titleImgUrl", getTitleImgUrl())
            .append("title", getTitle())
            .append("videoUrl", getVideoUrl())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("flagDel", getFlagDel())
            .toString();
    }
}
