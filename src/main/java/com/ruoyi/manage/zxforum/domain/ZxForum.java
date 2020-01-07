package com.ruoyi.manage.zxforum.domain;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 装修日志管理对象 t_zx_forum
 * 
 * @author yanbs
 * @date 2019-12-21
 */
public class ZxForum extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long forumId;

    /** null */
    private String openid;

    /** 头像 */
    @Excel(name = "头像")
    private String headImg;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 内容 */
    private String content;
    
    private Integer status;
    
    private String remark;

    public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	/** 阅读人数 */
    @Excel(name = "阅读人数")
    private Long readNum;
    
    private List<ZxForumImg> forumImgs;

    public List<ZxForumImg> getForumImgs() {
		return forumImgs;
	}

	public void setForumImgs(List<ZxForumImg> forumImgs) {
		this.forumImgs = forumImgs;
	}

	public void setForumId(Long forumId) 
    {
        this.forumId = forumId;
    }

    public Long getForumId() 
    {
        return forumId;
    }
    public void setOpenid(String openid) 
    {
        this.openid = openid;
    }

    public String getOpenid() 
    {
        return openid;
    }
    public void setHeadImg(String headImg) 
    {
        this.headImg = headImg;
    }

    public String getHeadImg() 
    {
        return headImg;
    }
    public void setNickname(String nickname) 
    {
        this.nickname = nickname;
    }

    public String getNickname() 
    {
        return nickname;
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
    public void setReadNum(Long readNum) 
    {
        this.readNum = readNum;
    }

    public Long getReadNum() 
    {
        return readNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("forumId", getForumId())
            .append("openid", getOpenid())
            .append("headImg", getHeadImg())
            .append("nickname", getNickname())
            .append("title", getTitle())
            .append("content", getContent())
            .append("readNum", getReadNum())
            .append("createTime", getCreateTime())
            .toString();
    }
}
