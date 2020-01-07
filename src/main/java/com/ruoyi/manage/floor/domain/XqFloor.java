package com.ruoyi.manage.floor.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 楼栋管理对象 t_xq_floor
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public class XqFloor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 信息ID */
    private Long floorId;

    /** 小区 */
    @Excel(name = "小区")
    private Long deptId;
    
    private String deptName;

    /** 楼栋号 */
    @Excel(name = "楼栋号")
    private Long buildNum;

    /** 楼栋名 */
    private String bulidName;

    /** 单元号 */
    @Excel(name = "单元号")
    private Long unitNum;

    /** 房间号 */
    @Excel(name = "房间号")
    private Long doorNum;

    /** 面积 */
    @Excel(name = "面积")
    private String area;

    /** 户型 */
    @Excel(name = "户型")
    private String doorType;

    public void setFloorId(Long floorId) 
    {
        this.floorId = floorId;
    }

    public Long getFloorId() 
    {
        return floorId;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
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
    public void setBulidName(String bulidName) 
    {
        this.bulidName = bulidName;
    }

    public String getBulidName() 
    {
        return bulidName;
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
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }
    public void setDoorType(String doorType) 
    {
        this.doorType = doorType;
    }

    public String getDoorType() 
    {
        return doorType;
    }

    public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	@Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("floorId", getFloorId())
            .append("deptId", getDeptId())
            .append("buildNum", getBuildNum())
            .append("bulidName", getBulidName())
            .append("unitNum", getUnitNum())
            .append("doorNum", getDoorNum())
            .append("area", getArea())
            .append("doorType", getDoorType())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
