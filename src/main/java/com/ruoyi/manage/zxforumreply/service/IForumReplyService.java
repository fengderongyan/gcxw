package com.ruoyi.manage.zxforumreply.service;

import com.ruoyi.manage.zxforumreply.domain.ForumReply;
import java.util.List;

/**
 * 评论管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-21
 */
public interface IForumReplyService 
{
    /**
     * 查询评论管理
     * 
     * @param forumReplyId 评论管理ID
     * @return 评论管理
     */
    public ForumReply selectForumReplyById(Long forumReplyId);

    /**
     * 查询评论管理列表
     * 
     * @param forumReply 评论管理
     * @return 评论管理集合
     */
    public List<ForumReply> selectForumReplyList(ForumReply forumReply);

    /**
     * 新增评论管理
     * 
     * @param forumReply 评论管理
     * @return 结果
     */
    public int insertForumReply(ForumReply forumReply);

    /**
     * 修改评论管理
     * 
     * @param forumReply 评论管理
     * @return 结果
     */
    public int updateForumReply(ForumReply forumReply);

    /**
     * 批量删除评论管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteForumReplyByIds(String ids);

    /**
     * 删除评论管理信息
     * 
     * @param forumReplyId 评论管理ID
     * @return 结果
     */
    public int deleteForumReplyById(Long forumReplyId);
}
