package com.ruoyi.manage.zxforum.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxforum.mapper.ZxForumMapper;
import com.ruoyi.manage.zxforum.domain.ZxForum;
import com.ruoyi.manage.zxforum.service.IZxForumService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 装修日志管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-21
 */
@Service
public class ZxForumServiceImpl implements IZxForumService 
{
    @Autowired
    private ZxForumMapper zxForumMapper;

    /**
     * 查询装修日志管理
     * 
     * @param forumId 装修日志管理ID
     * @return 装修日志管理
     */
    @Override
    public ZxForum selectZxForumById(Long forumId)
    {
        return zxForumMapper.selectZxForumById(forumId);
    }

    /**
     * 查询装修日志管理列表
     * 
     * @param zxForum 装修日志管理
     * @return 装修日志管理
     */
    @Override
    public List<ZxForum> selectZxForumList(ZxForum zxForum)
    {
        return zxForumMapper.selectZxForumList(zxForum);
    }

    /**
     * 新增装修日志管理
     * 
     * @param zxForum 装修日志管理
     * @return 结果
     */
    @Override
    public int insertZxForum(ZxForum zxForum)
    {
		Date date = DateUtils.getNowDate();
        zxForum.setCreateTime(date);
        zxForum.setUpdateTime(date);
        return zxForumMapper.insertZxForum(zxForum);
    }

    /**
     * 修改装修日志管理
     * 
     * @param zxForum 装修日志管理
     * @return 结果
     */
    @Override
    public int updateZxForum(ZxForum zxForum)
    {
        zxForum.setUpdateTime(DateUtils.getNowDate());
        return zxForumMapper.updateZxForum(zxForum);
    }

    /**
     * 删除装修日志管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxForumByIds(String ids)
    {
        return zxForumMapper.deleteZxForumByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修日志管理信息
     * 
     * @param forumId 装修日志管理ID
     * @return 结果
     */
    public int deleteZxForumById(Long forumId)
    {
        return zxForumMapper.deleteZxForumById(forumId);
    }

	@Override
	public int dealAll(String ids) {
		String[] idArr = ids.split(",");
		for (int i = 0; i < idArr.length; i++) {
			ZxForum zxForum = new ZxForum();
			zxForum.setStatus(1);
			zxForum.setForumId(Long.valueOf(idArr[i]));
			zxForumMapper.updateZxForum(zxForum);
		}
		return 1;
	}
}
