package com.ruoyi.manage.zxcompany.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修公司管理对象 t_zx_company
 * 
 * @author yanbs
 * @date 2019-12-10
 */
public class ZxCompany extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long zxCompanyId;

    /** 公司名称 */
    @Excel(name = "公司名称")
    private String companyName;

    /** 品牌logo */
    @Excel(name = "品牌logo")
    private String logo;

    /** 首页推荐 */
    @Excel(name = "首页推荐")
    private Long isMain;

    /** 公司地址 */
    @Excel(name = "公司地址")
    private String address;

    /** 推荐指数 */
    @Excel(name = "推荐指数")
    private Long recNum;

    /** 公司介绍 */
    private String detail;

    public void setZxCompanyId(Long zxCompanyId) 
    {
        this.zxCompanyId = zxCompanyId;
    }

    public Long getZxCompanyId() 
    {
        return zxCompanyId;
    }
    public void setCompanyName(String companyName) 
    {
        this.companyName = companyName;
    }

    public String getCompanyName() 
    {
        return companyName;
    }
    public void setLogo(String logo) 
    {
        this.logo = logo;
    }

    public String getLogo() 
    {
        return logo;
    }
    public void setIsMain(Long isMain) 
    {
        this.isMain = isMain;
    }

    public Long getIsMain() 
    {
        return isMain;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setRecNum(Long recNum) 
    {
        this.recNum = recNum;
    }

    public Long getRecNum() 
    {
        return recNum;
    }
    public void setDetail(String detail) 
    {
        this.detail = detail;
    }

    public String getDetail() 
    {
        return detail;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("zxCompanyId", getZxCompanyId())
            .append("companyName", getCompanyName())
            .append("logo", getLogo())
            .append("isMain", getIsMain())
            .append("address", getAddress())
            .append("recNum", getRecNum())
            .append("detail", getDetail())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
