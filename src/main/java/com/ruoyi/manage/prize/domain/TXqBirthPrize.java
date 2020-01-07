package com.ruoyi.manage.prize.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 生日奖品管理对象 t_xq_birth_prize
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public class TXqBirthPrize extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String title;

    /** 简介 */
    @Excel(name = "简介")
    private String introduced;

    /** 内容 */
    private String content;

    /** 库存 */
    @Excel(name = "库存")
    private Long num;

    /** 状态：0 录入，1上架，2下架 */
    @Excel(name = "状态：0 录入，1上架，2下架")
    private Long state;

    /** null */
    private Date createDate;

    /** null */
    private Date updateDate;

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
    public void setIntroduced(String introduced) 
    {
        this.introduced = introduced;
    }

    public String getIntroduced() 
    {
        return introduced;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setNum(Long num) 
    {
        this.num = num;
    }

    public Long getNum() 
    {
        return num;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }
    public void setUpdateDate(Date updateDate) 
    {
        this.updateDate = updateDate;
    }

    public Date getUpdateDate() 
    {
        return updateDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("introduced", getIntroduced())
            .append("content", getContent())
            .append("num", getNum())
            .append("state", getState())
            .append("createBy", getCreateBy())
            .append("createDate", getCreateDate())
            .append("updateBy", getUpdateBy())
            .append("updateDate", getUpdateDate())
            .toString();
    }
}
