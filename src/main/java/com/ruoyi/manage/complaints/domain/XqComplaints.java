package com.ruoyi.manage.complaints.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 投诉/建议管理对象 t_xq_complaints
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
public class XqComplaints extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 建议类型 */
    @Excel(name = "建议类型")
    private Long type;

    /** 具体描述 */
    @Excel(name = "具体描述")
    private String content;

    /** 提出人openId */
    private String presentedId;

    /** 提出人小区 */
    private String presentedDept;

    /** 提出时间 */
    private Date presentedDate;

    /** 回复内容 */
    private String reply;

    /** 回复时间 */
    private Date replyDate;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

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
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setPresentedId(String presentedId) 
    {
        this.presentedId = presentedId;
    }

    public String getPresentedId() 
    {
        return presentedId;
    }
    public void setPresentedDept(String presentedDept) 
    {
        this.presentedDept = presentedDept;
    }

    public String getPresentedDept() 
    {
        return presentedDept;
    }
    public void setPresentedDate(Date presentedDate) 
    {
        this.presentedDate = presentedDate;
    }

    public Date getPresentedDate() 
    {
        return presentedDate;
    }
    public void setReply(String reply) 
    {
        this.reply = reply;
    }

    public String getReply() 
    {
        return reply;
    }
    public void setReplyDate(Date replyDate) 
    {
        this.replyDate = replyDate;
    }

    public Date getReplyDate() 
    {
        return replyDate;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("content", getContent())
            .append("presentedId", getPresentedId())
            .append("presentedDept", getPresentedDept())
            .append("presentedDate", getPresentedDate())
            .append("reply", getReply())
            .append("replyDate", getReplyDate())
            .append("state", getState())
            .toString();
    }
}
