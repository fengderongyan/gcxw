package com.ruoyi.manage.zxmaterialbanner.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 主材推荐banner对象 t_zx_material_banner
 * 
 * @author yanbs
 * @date 2020-01-06
 */
public class ZxMaterialBanner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long materialBannerId;

    /** 封面 */
    @Excel(name = "封面")
    private String titleImgUrl;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 详情 */
    @Excel(name = "详情")
    private String detail;

    /** 首页展示 */
    @Excel(name = "首页展示")
    private Long status;

    public void setMaterialBannerId(Long materialBannerId) 
    {
        this.materialBannerId = materialBannerId;
    }

    public Long getMaterialBannerId() 
    {
        return materialBannerId;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("materialBannerId", getMaterialBannerId())
            .append("titleImgUrl", getTitleImgUrl())
            .append("title", getTitle())
            .append("detail", getDetail())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
