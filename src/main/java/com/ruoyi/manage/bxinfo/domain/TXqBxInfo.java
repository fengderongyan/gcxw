package com.ruoyi.manage.bxinfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 报修管理对象 t_xq_bx_info
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
public class TXqBxInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 类型 */
    @Excel(name = "类型")
    private Long type;

    /** 预约时间 */
    @Excel(name = "预约时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date appointment;

    /** 具体描述 */
    @Excel(name = "具体描述")
    private String introduced;

    /** 追加描述 */
    @Excel(name = "追加描述")
    private String additional;

    /** 发布人openId */
    private String presentedId;

    /** 发布人小区 */
    @Excel(name = "发布人小区")
    private String presentedDept;

    /** 发布日期 */
    private Date presentedDate;

    /** 发布人联系方式 */
    @Excel(name = "发布人联系方式")
    private String presentedMobile;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setAppointment(Date appointment) 
    {
        this.appointment = appointment;
    }

    public Date getAppointment() 
    {
        return appointment;
    }
    public void setIntroduced(String introduced) 
    {
        this.introduced = introduced;
    }

    public String getIntroduced() 
    {
        return introduced;
    }
    public void setAdditional(String additional) 
    {
        this.additional = additional;
    }

    public String getAdditional() 
    {
        return additional;
    }
    public void setPresentedId(String presentedId) 
    {
        this.presentedId = presentedId;
    }

    public String getPresentedId() 
    {
        return presentedId;
    }
    public void setPresentedDept(String presentedDept) 
    {
        this.presentedDept = presentedDept;
    }

    public String getPresentedDept() 
    {
        return presentedDept;
    }
    public void setPresentedDate(Date presentedDate) 
    {
        this.presentedDate = presentedDate;
    }

    public Date getPresentedDate() 
    {
        return presentedDate;
    }
    public void setPresentedMobile(String presentedMobile) 
    {
        this.presentedMobile = presentedMobile;
    }

    public String getPresentedMobile() 
    {
        return presentedMobile;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("appointment", getAppointment())
            .append("introduced", getIntroduced())
            .append("additional", getAdditional())
            .append("presentedId", getPresentedId())
            .append("presentedDept", getPresentedDept())
            .append("presentedDate", getPresentedDate())
            .append("presentedMobile", getPresentedMobile())
            .append("state", getState())
            .toString();
    }
}
