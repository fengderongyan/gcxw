package com.ruoyi.manage.zxforumreply.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxforumreply.mapper.ForumReplyMapper;
import com.ruoyi.manage.zxforumreply.domain.ForumReply;
import com.ruoyi.manage.zxforumreply.service.IForumReplyService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 评论管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-21
 */
@Service
public class ForumReplyServiceImpl implements IForumReplyService 
{
    @Autowired
    private ForumReplyMapper forumReplyMapper;

    /**
     * 查询评论管理
     * 
     * @param forumReplyId 评论管理ID
     * @return 评论管理
     */
    @Override
    public ForumReply selectForumReplyById(Long forumReplyId)
    {
        return forumReplyMapper.selectForumReplyById(forumReplyId);
    }

    /**
     * 查询评论管理列表
     * 
     * @param forumReply 评论管理
     * @return 评论管理
     */
    @Override
    public List<ForumReply> selectForumReplyList(ForumReply forumReply)
    {
        return forumReplyMapper.selectForumReplyList(forumReply);
    }

    /**
     * 新增评论管理
     * 
     * @param forumReply 评论管理
     * @return 结果
     */
    @Override
    public int insertForumReply(ForumReply forumReply)
    {
		Date date = DateUtils.getNowDate();
        forumReply.setCreateTime(date);
        forumReply.setUpdateTime(date);
        return forumReplyMapper.insertForumReply(forumReply);
    }

    /**
     * 修改评论管理
     * 
     * @param forumReply 评论管理
     * @return 结果
     */
    @Override
    public int updateForumReply(ForumReply forumReply)
    {
        forumReply.setUpdateTime(DateUtils.getNowDate());
        return forumReplyMapper.updateForumReply(forumReply);
    }

    /**
     * 删除评论管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteForumReplyByIds(String ids)
    {
        return forumReplyMapper.deleteForumReplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除评论管理信息
     * 
     * @param forumReplyId 评论管理ID
     * @return 结果
     */
    public int deleteForumReplyById(Long forumReplyId)
    {
        return forumReplyMapper.deleteForumReplyById(forumReplyId);
    }
}
