package com.ruoyi.manage.zxforumreply.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 评论管理对象 t_forum_reply
 * 
 * @author yanbs
 * @date 2019-12-21
 */
public class ForumReply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long forumReplyId;

    /** 装修日志ID */
    private Long forumId;

    /** null */
    private String replyOpenid;

    /** 头像 */
    @Excel(name = "头像")
    private String replyHeadImg;

    /** 昵称 */
    @Excel(name = "昵称")
    private String replyNickname;

    /** 回复内容 */
    @Excel(name = "回复内容")
    private String replyContent;
    
    private String forumTitle;

    public String getForumTitle() {
		return forumTitle;
	}

	public void setForumTitle(String forumTitle) {
		this.forumTitle = forumTitle;
	}

	public void setForumReplyId(Long forumReplyId) 
    {
        this.forumReplyId = forumReplyId;
    }

    public Long getForumReplyId() 
    {
        return forumReplyId;
    }
    public void setForumId(Long forumId) 
    {
        this.forumId = forumId;
    }

    public Long getForumId() 
    {
        return forumId;
    }
    public void setReplyOpenid(String replyOpenid) 
    {
        this.replyOpenid = replyOpenid;
    }

    public String getReplyOpenid() 
    {
        return replyOpenid;
    }
    public void setReplyHeadImg(String replyHeadImg) 
    {
        this.replyHeadImg = replyHeadImg;
    }

    public String getReplyHeadImg() 
    {
        return replyHeadImg;
    }
    public void setReplyNickname(String replyNickname) 
    {
        this.replyNickname = replyNickname;
    }

    public String getReplyNickname() 
    {
        return replyNickname;
    }
    public void setReplyContent(String replyContent) 
    {
        this.replyContent = replyContent;
    }

    public String getReplyContent() 
    {
        return replyContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("forumReplyId", getForumReplyId())
            .append("forumId", getForumId())
            .append("replyOpenid", getReplyOpenid())
            .append("replyHeadImg", getReplyHeadImg())
            .append("replyNickname", getReplyNickname())
            .append("replyContent", getReplyContent())
            .append("createTime", getCreateTime())
            .toString();
    }
}
