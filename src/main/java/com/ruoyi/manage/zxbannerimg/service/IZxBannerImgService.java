package com.ruoyi.manage.zxbannerimg.service;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.zxbannerimg.domain.ZxBannerImg;
import com.ruoyi.project.system.dept.domain.Dept;

import java.util.List;

/**
 * 装修首页bannerService接口
 * 
 * @author yanbs
 * @date 2019-12-17
 */
public interface IZxBannerImgService 
{
    /**
     * 查询装修首页banner
     * 
     * @param zxBannerImgId 装修首页bannerID
     * @return 装修首页banner
     */
    public ZxBannerImg selectZxBannerImgById(Long zxBannerImgId);

    /**
     * 查询装修首页banner列表
     * 
     * @param zxBannerImg 装修首页banner
     * @return 装修首页banner集合
     */
    public List<ZxBannerImg> selectZxBannerImgList(ZxBannerImg zxBannerImg);

    /**
     * 新增装修首页banner
     * 
     * @param zxBannerImg 装修首页banner
     * @return 结果
     */
    public int insertZxBannerImg(ZxBannerImg zxBannerImg);

    /**
     * 修改装修首页banner
     * 
     * @param zxBannerImg 装修首页banner
     * @return 结果
     */
    public int updateZxBannerImg(ZxBannerImg zxBannerImg);

    /**
     * 批量删除装修首页banner
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxBannerImgByIds(String ids);

    /**
     * 删除装修首页banner信息
     * 
     * @param zxBannerImgId 装修首页bannerID
     * @return 结果
     */
    public int deleteZxBannerImgById(Long zxBannerImgId);

	public List<PageData> selectXqList(Long zxBannerImgId, List<Dept> xqList);

	public int saveXq(Long zxBannerImgId, Long[] deptIds);

	public int changeStatus(ZxBannerImg zxBannerImg);

	public int checkXqExists(Long zxBannerImgId);
}
