package com.ruoyi.manage.property.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 物业费对象 t_xq_property
 * 
 * @author zhangchengcai
 * @date 2019-12-05
 */
public class TXqProperty extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 楼栋ID */
    private Long floorId;

    /** 物业费名称 */
    @Excel(name = "物业费名称")
    private String propertyName;

    /** 物业费金额（分） */
    @Excel(name = "物业费金额", readConverterExp = "分=")
    private String propertyFee;

    /** 生效时间 */
    @Excel(name = "生效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 失效时间 */
    @Excel(name = "失效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 状态 */
    private Long state;

    /** 推送时间 */
    private Date pushDate;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFloorId(Long floorId) 
    {
        this.floorId = floorId;
    }

    public Long getFloorId() 
    {
        return floorId;
    }
    public void setPropertyName(String propertyName) 
    {
        this.propertyName = propertyName;
    }

    public String getPropertyName() 
    {
        return propertyName;
    }
    public void setPropertyFee(String propertyFee) 
    {
        this.propertyFee = propertyFee;
    }

    public String getPropertyFee() 
    {
        return propertyFee;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }
    public void setPushDate(Date pushDate) 
    {
        this.pushDate = pushDate;
    }

    public Date getPushDate() 
    {
        return pushDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("floorId", getFloorId())
            .append("propertyName", getPropertyName())
            .append("propertyFee", getPropertyFee())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("state", getState())
            .append("pushDate", getPushDate())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
