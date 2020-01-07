package com.ruoyi.manage.jssb.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 急事速办对象 t_xq_jssb
 * 
 * @author zhangchengcai
 * @date 2019-12-10
 */
public class TXqJssb extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    private String deptId;
    
    private String deptName;
    
    /** 类型 */
    @Excel(name = "类型")
    private Long type;

    /** 商家名称 */
    @Excel(name = "商家名称")
    private String busName;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String busMobile;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setBusName(String busName) 
    {
        this.busName = busName;
    }

    public String getBusName() 
    {
        return busName;
    }
    public void setBusMobile(String busMobile) 
    {
        this.busMobile = busMobile;
    }

    public String getBusMobile() 
    {
        return busMobile;
    }
    public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
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
            .append("id", getId())
            .append("title", getTitle())
            .append("type", getType())
            .append("busName", getBusName())
            .append("busMobile", getBusMobile())
            .append("content", getContent())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
