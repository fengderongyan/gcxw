package com.ruoyi.manage.businfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 二手交易管理对象 t_esbus_info
 * 
 * @author zhangchengcai
 * @date 2019-12-19
 */
public class TEsbusInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    @Excel(name = "null")
    private Long id;

    /** UUID标识 */
    @Excel(name = "UUID标识")
    private String uuId;

    /** 类型 */
    @Excel(name = "类型")
    private Long type;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 介绍 */
    private String introduced;

    /** 发布人openId */
    private String presentedId;

    /** 发布人小区 */
    @Excel(name = "发布人小区")
    private String presentedDept;

    /** 发布日期 */
    @Excel(name = "发布日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date presentedDate;

    /** 发布人联系方式 */
    @Excel(name = "发布人联系方式")
    private String presentedMobile;

    /** 状态：1 发布；2 已审核； 3 结单 */
    @Excel(name = "状态：1 发布；2 已审核； 3 结单")
    private Long state;

    /** 审核日期 */
    private Date shDate;

    /** 审核人 */
    private String shOper;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUuId(String uuId) 
    {
        this.uuId = uuId;
    }

    public String getUuId() 
    {
        return uuId;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setIntroduced(String introduced) 
    {
        this.introduced = introduced;
    }

    public String getIntroduced() 
    {
        return introduced;
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
    public void setShDate(Date shDate) 
    {
        this.shDate = shDate;
    }

    public Date getShDate() 
    {
        return shDate;
    }
    public void setShOper(String shOper) 
    {
        this.shOper = shOper;
    }

    public String getShOper() 
    {
        return shOper;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("uuId", getUuId())
            .append("type", getType())
            .append("title", getTitle())
            .append("introduced", getIntroduced())
            .append("presentedId", getPresentedId())
            .append("presentedDept", getPresentedDept())
            .append("presentedDate", getPresentedDate())
            .append("presentedMobile", getPresentedMobile())
            .append("state", getState())
            .append("shDate", getShDate())
            .append("shOper", getShOper())
            .toString();
    }
}
