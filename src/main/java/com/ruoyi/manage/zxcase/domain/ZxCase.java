package com.ruoyi.manage.zxcase.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修案例对象 t_zx_case
 * 
 * @author yanbs
 * @date 2019-12-31
 */
public class ZxCase extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long caseId;

    /** 装修公司 */
    @Excel(name = "装修公司")
    private Long companyId;

    /** 设计师 */
    @Excel(name = "设计师")
    private Long designerId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 介绍 */
    @Excel(name = "介绍")
    private String content;

    /** 附图 */
    @Excel(name = "附图")
    private String imgUrls;

    private String companyName;
    
    private String designerName;
    public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDesignerName() {
		return designerName;
	}

	public void setDesignerName(String designerName) {
		this.designerName = designerName;
	}

	public void setCaseId(Long caseId) 
    {
        this.caseId = caseId;
    }

    public Long getCaseId() 
    {
        return caseId;
    }
    public void setCompanyId(Long companyId) 
    {
        this.companyId = companyId;
    }

    public Long getCompanyId() 
    {
        return companyId;
    }
    public void setDesignerId(Long designerId) 
    {
        this.designerId = designerId;
    }

    public Long getDesignerId() 
    {
        return designerId;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setImgUrls(String imgUrls) 
    {
        this.imgUrls = imgUrls;
    }

    public String getImgUrls() 
    {
        return imgUrls;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("caseId", getCaseId())
            .append("companyId", getCompanyId())
            .append("designerId", getDesignerId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("imgUrls", getImgUrls())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
