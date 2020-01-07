package com.ruoyi.manage.fee.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 业主缴费对象 t_xq_push_fee
 * 
 * @author yanbs
 * @date 2019-12-20
 */
public class TXqPushFee extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 类型:1 物业费，2 停车费 */
    @Excel(name = "类型:1 物业费，2 停车费")
    private Long type;

    /** 费用（分） */
    @Excel(name = "费用", readConverterExp = "分=")
    private String fee;

    /** 费用指向ID */
    @Excel(name = "费用指向ID")
    private Long feeId;

    /** 小区ID */
    @Excel(name = "小区ID")
    private String deptId;

    /** 楼栋ＩＤ */
    @Excel(name = "楼栋ＩＤ")
    private Long buildNum;

    /** 单元号 */
    @Excel(name = "单元号")
    private Long unitNum;

    /** 门牌号 */
    @Excel(name = "门牌号")
    private Long doorNum;

    /** 费用生效时间 */
    @Excel(name = "费用生效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 费用结束时间 */
    @Excel(name = "费用结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 推送时间 */
    private Date pushTime;

    /** 订单号 */
    private String outTradeNo;

    /** 实付款 */
    private String totalFee;

    /** 支付完成时间 */
    private String timeEnd;

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
    public void setFee(String fee) 
    {
        this.fee = fee;
    }

    public String getFee() 
    {
        return fee;
    }
    public void setFeeId(Long feeId) 
    {
        this.feeId = feeId;
    }

    public Long getFeeId() 
    {
        return feeId;
    }
    public void setDeptId(String deptId) 
    {
        this.deptId = deptId;
    }

    public String getDeptId() 
    {
        return deptId;
    }
    public void setBuildNum(Long buildNum) 
    {
        this.buildNum = buildNum;
    }

    public Long getBuildNum() 
    {
        return buildNum;
    }
    public void setUnitNum(Long unitNum) 
    {
        this.unitNum = unitNum;
    }

    public Long getUnitNum() 
    {
        return unitNum;
    }
    public void setDoorNum(Long doorNum) 
    {
        this.doorNum = doorNum;
    }

    public Long getDoorNum() 
    {
        return doorNum;
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
    public void setPushTime(Date pushTime) 
    {
        this.pushTime = pushTime;
    }

    public Date getPushTime() 
    {
        return pushTime;
    }
    public void setOutTradeNo(String outTradeNo) 
    {
        this.outTradeNo = outTradeNo;
    }

    public String getOutTradeNo() 
    {
        return outTradeNo;
    }
    public void setTotalFee(String totalFee) 
    {
        this.totalFee = totalFee;
    }

    public String getTotalFee() 
    {
        return totalFee;
    }
    public void setTimeEnd(String timeEnd) 
    {
        this.timeEnd = timeEnd;
    }

    public String getTimeEnd() 
    {
        return timeEnd;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("fee", getFee())
            .append("feeId", getFeeId())
            .append("deptId", getDeptId())
            .append("buildNum", getBuildNum())
            .append("unitNum", getUnitNum())
            .append("doorNum", getDoorNum())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("pushTime", getPushTime())
            .append("outTradeNo", getOutTradeNo())
            .append("totalFee", getTotalFee())
            .append("timeEnd", getTimeEnd())
            .toString();
    }
}
