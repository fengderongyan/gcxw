package com.ruoyi.manage.zxbannervideo.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.project.system.dept.domain.Dept;

import java.util.List;

/**
 * 装修首页视频管理Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public interface ZxBannerVideoMapper 
{
    /**
     * 查询装修首页视频管理
     * 
     * @param zxBannerVideoId 装修首页视频管理ID
     * @return 装修首页视频管理
     */
    public ZxBannerVideo selectZxBannerVideoById(Long zxBannerVideoId);

    /**
     * 查询装修首页视频管理列表
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 装修首页视频管理集合
     */
    public List<ZxBannerVideo> selectZxBannerVideoList(ZxBannerVideo zxBannerVideo);

    /**
     * 新增装修首页视频管理
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 结果
     */
    public int insertZxBannerVideo(ZxBannerVideo zxBannerVideo);

    /**
     * 修改装修首页视频管理
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 结果
     */
    public int updateZxBannerVideo(ZxBannerVideo zxBannerVideo);

    /**
     * 删除装修首页视频管理
     * 
     * @param zxBannerVideoId 装修首页视频管理ID
     * @return 结果
     */
    public int deleteZxBannerVideoById(Long zxBannerVideoId);

    /**
     * 批量删除装修首页视频管理
     * 
     * @param zxBannerVideoIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxBannerVideoByIds(String[] zxBannerVideoIds);

	public int changeStatus(ZxBannerVideo zxBannerVideo);

	public List<PageData> selectSelectedXqList(Long zxBannerVideoId);

	public void deleteVideoDept(PageData pd);

	public void saveXq(PageData pd);

	public int checkXqExists(Long zxBannerVideoId);
}
