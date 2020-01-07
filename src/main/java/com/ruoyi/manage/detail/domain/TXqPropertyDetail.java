package com.ruoyi.manage.detail.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 物业明细对象 t_xq_property_detail
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public class TXqPropertyDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 物业ID */
    private Long property;

    /** 费用名称 */
    @Excel(name = "费用名称")
    private String detailName;

    /** 费用金额 */
    @Excel(name = "费用金额")
    private String detailFee;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setProperty(Long property) 
    {
        this.property = property;
    }

    public Long getProperty() 
    {
        return property;
    }
    public void setDetailName(String detailName) 
    {
        this.detailName = detailName;
    }

    public String getDetailName() 
    {
        return detailName;
    }
    public void setDetailFee(String detailFee) 
    {
        this.detailFee = detailFee;
    }

    public String getDetailFee() 
    {
        return detailFee;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("property", getProperty())
            .append("detailName", getDetailName())
            .append("detailFee", getDetailFee())
            .append("remark", getRemark())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
