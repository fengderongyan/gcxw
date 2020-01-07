package com.ruoyi.manage.space.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 停车费对象 t_xq_parking_space
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public class TXqParkingSpace extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 楼栋ID */
    private Long floorId;
    
    private Long deptId;
    
    private Long state;

    /** 费用 */
    @Excel(name = "费用")
    private String parkingFee;

    /** 车位号 */
    @Excel(name = "车位号")
    private Long parkingNum;

    /** 生效时间 */
    @Excel(name = "生效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 失效时间 */
    @Excel(name = "失效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

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
    public void setParkingFee(String parkingFee) 
    {
        this.parkingFee = parkingFee;
    }

    public String getParkingFee() 
    {
        return parkingFee;
    }
    public void setParkingNum(Long parkingNum) 
    {
        this.parkingNum = parkingNum;
    }

    public Long getParkingNum() 
    {
        return parkingNum;
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

    public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public Long getState() {
		return state;
	}

	public void setState(Long state) {
		this.state = state;
	}

	@Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("deptId", getDeptId())
            .append("floorId", getFloorId())
            .append("parkingFee", getParkingFee())
            .append("parkingNum", getParkingNum())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
