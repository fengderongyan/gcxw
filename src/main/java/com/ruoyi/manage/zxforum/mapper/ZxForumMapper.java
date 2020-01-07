package com.ruoyi.manage.zxforum.mapper;

import com.ruoyi.manage.zxforum.domain.ZxForum;
import java.util.List;

/**
 * 装修日志管理Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-21
 */
public interface ZxForumMapper 
{
    /**
     * 查询装修日志管理
     * 
     * @param forumId 装修日志管理ID
     * @return 装修日志管理
     */
    public ZxForum selectZxForumById(Long forumId);

    /**
     * 查询装修日志管理列表
     * 
     * @param zxForum 装修日志管理
     * @return 装修日志管理集合
     */
    public List<ZxForum> selectZxForumList(ZxForum zxForum);

    /**
     * 新增装修日志管理
     * 
     * @param zxForum 装修日志管理
     * @return 结果
     */
    public int insertZxForum(ZxForum zxForum);

    /**
     * 修改装修日志管理
     * 
     * @param zxForum 装修日志管理
     * @return 结果
     */
    public int updateZxForum(ZxForum zxForum);

    /**
     * 删除装修日志管理
     * 
     * @param forumId 装修日志管理ID
     * @return 结果
     */
    public int deleteZxForumById(Long forumId);

    /**
     * 批量删除装修日志管理
     * 
     * @param forumIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxForumByIds(String[] forumIds);
}
