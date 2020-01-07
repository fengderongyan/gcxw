package com.ruoyi.manage.zxbannerimg.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修首页banner对象 t_zx_banner_img
 * 
 * @author yanbs
 * @date 2019-12-17
 */
public class ZxBannerImg extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long zxBannerImgId;

    /** 封面 */
    @Excel(name = "封面")
    private String titleImgUrl;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 详情 */
    private String detail;

    /** 首页显示 */
    @Excel(name = "首页显示")
    private Long status;

    /** null */
    private Long flagDel;

    public void setZxBannerImgId(Long zxBannerImgId) 
    {
        this.zxBannerImgId = zxBannerImgId;
    }

    public Long getZxBannerImgId() 
    {
        return zxBannerImgId;
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
    public void setDetail(String detail) 
    {
        this.detail = detail;
    }

    public String getDetail() 
    {
        return detail;
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
            .append("zxBannerImgId", getZxBannerImgId())
            .append("titleImgUrl", getTitleImgUrl())
            .append("title", getTitle())
            .append("detail", getDetail())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("flagDel", getFlagDel())
            .toString();
    }
}
