package com.ruoyi.manage.showhome.domain;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修效果对象 t_zx_show_home
 * 
 * @author yanbs
 * @date 2019-12-09
 */
public class ZxShowHome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long showHomeId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 类型 */
    @Excel(name = "类型")
    private String type;

    /** 介绍 */
    private String detail;

    /** 小区 */
    @Excel(name = "小区")
    private Long deptId;

    /** 楼号 */
    private Long buildNum;

    /** 单元号 */
    private Long unitNum;

    /** 房间号 */
    private Long doorNum;

    /** 楼栋-单元-房间(1-1-101) */
    @Excel(name = "楼栋-单元-房间(1-1-101)")
    private String bud;

    /** 面积 */
    @Excel(name = "面积")
    private String area;
    
    private String doorType;
    
    private String deptName;

    public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	private List<ShowHomeImg> showHomeImgs;
    
    public List<ShowHomeImg> getShowHomeImgs() {
		return showHomeImgs;
	}

	public void setShowHomeImgs(List<ShowHomeImg> showHomeImgs) {
		this.showHomeImgs = showHomeImgs;
	}

	public String getDoorType() {
		return doorType;
	}

	public void setDoorType(String doorType) {
		this.doorType = doorType;
	}

	public void setShowHomeId(Long showHomeId) 
    {
        this.showHomeId = showHomeId;
    }

    public Long getShowHomeId() 
    {
        return showHomeId;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setDetail(String detail) 
    {
        this.detail = detail;
    }

    public String getDetail() 
    {
        return detail;
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
    public void setBud(String bud) 
    {
        this.bud = bud;
    }

    public String getBud() 
    {
        return bud;
    }
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("showHomeId", getShowHomeId())
            .append("title", getTitle())
            .append("type", getType())
            .append("detail", getDetail())
            .append("deptId", getDeptId())
            .append("buildNum", getBuildNum())
            .append("unitNum", getUnitNum())
            .append("doorNum", getDoorNum())
            .append("bud", getBud())
            .append("area", getArea())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
