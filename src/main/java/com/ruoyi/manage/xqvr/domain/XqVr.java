package com.ruoyi.manage.xqvr.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import com.ruoyi.project.system.dept.domain.Dept;

/**
 * 小区全景配置对象 t_xq_vr
 * 
 * @author yanbs
 * @date 2019-12-04
 */
public class XqVr extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long xqVrId;

    /** 小区 */
    @Excel(name = "小区")
    private Long deptId;

    /** 地址 */
    @Excel(name = "地址")
    private String vrUrl;
    
    private Dept dept;

    public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public void setXqVrId(Long xqVrId) 
    {
        this.xqVrId = xqVrId;
    }

    public Long getXqVrId() 
    {
        return xqVrId;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }
    public void setVrUrl(String vrUrl) 
    {
        this.vrUrl = vrUrl;
    }

    public String getVrUrl() 
    {
        return vrUrl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("xqVrId", getXqVrId())
            .append("deptId", getDeptId())
            .append("vrUrl", getVrUrl())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
