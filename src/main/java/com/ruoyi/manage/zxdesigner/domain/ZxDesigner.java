package com.ruoyi.manage.zxdesigner.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import com.ruoyi.manage.zxcompany.domain.ZxCompany;

/**
 * 设计师管理对象 t_zx_designer
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public class ZxDesigner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long designerId;

    /** 头像 */
    @Excel(name = "头像")
    private String headImg;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 装修公司 */
    @Excel(name = "装修公司")
    private Long zxCompanyId;

    /** 工作年限 */
    @Excel(name = "工作年限")
    private Long workYear;

    /** 性别 */
    @Excel(name = "性别")
    private Long sex;

    /** 推荐理由 */
    private String recReason;

    /** 职位 */
    @Excel(name = "职位")
    private String position;

    /** 首页展示 */
    @Excel(name = "首页展示")
    private Long status;

    /** 介绍 */
    private String detail;
    
    private ZxCompany zxCompany;

    public ZxCompany getZxCompany() {
		return zxCompany;
	}

	public void setZxCompany(ZxCompany zxCompany) {
		this.zxCompany = zxCompany;
	}

	public void setDesignerId(Long designerId) 
    {
        this.designerId = designerId;
    }

    public Long getDesignerId() 
    {
        return designerId;
    }
    public void setHeadImg(String headImg) 
    {
        this.headImg = headImg;
    }

    public String getHeadImg() 
    {
        return headImg;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setZxCompanyId(Long zxCompanyId) 
    {
        this.zxCompanyId = zxCompanyId;
    }

    public Long getZxCompanyId() 
    {
        return zxCompanyId;
    }
    public void setWorkYear(Long workYear) 
    {
        this.workYear = workYear;
    }

    public Long getWorkYear() 
    {
        return workYear;
    }
    public void setSex(Long sex) 
    {
        this.sex = sex;
    }

    public Long getSex() 
    {
        return sex;
    }
    public void setRecReason(String recReason) 
    {
        this.recReason = recReason;
    }

    public String getRecReason() 
    {
        return recReason;
    }
    public void setPosition(String position) 
    {
        this.position = position;
    }

    public String getPosition() 
    {
        return position;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
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
            .append("designerId", getDesignerId())
            .append("headImg", getHeadImg())
            .append("name", getName())
            .append("zxCompanyId", getZxCompanyId())
            .append("workYear", getWorkYear())
            .append("sex", getSex())
            .append("recReason", getRecReason())
            .append("position", getPosition())
            .append("status", getStatus())
            .append("detail", getDetail())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
