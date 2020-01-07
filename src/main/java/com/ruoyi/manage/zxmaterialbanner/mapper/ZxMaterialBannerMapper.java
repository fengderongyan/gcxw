package com.ruoyi.manage.zxmaterialbanner.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.zxmaterialbanner.domain.ZxMaterialBanner;
import java.util.List;

/**
 * 主材推荐bannerMapper接口
 * 
 * @author yanbs
 * @date 2020-01-06
 */
public interface ZxMaterialBannerMapper 
{
    /**
     * 查询主材推荐banner
     * 
     * @param materialBannerId 主材推荐bannerID
     * @return 主材推荐banner
     */
    public ZxMaterialBanner selectZxMaterialBannerById(Long materialBannerId);

    /**
     * 查询主材推荐banner列表
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 主材推荐banner集合
     */
    public List<ZxMaterialBanner> selectZxMaterialBannerList(ZxMaterialBanner zxMaterialBanner);

    /**
     * 新增主材推荐banner
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 结果
     */
    public int insertZxMaterialBanner(ZxMaterialBanner zxMaterialBanner);

    /**
     * 修改主材推荐banner
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 结果
     */
    public int updateZxMaterialBanner(ZxMaterialBanner zxMaterialBanner);

    /**
     * 删除主材推荐banner
     * 
     * @param materialBannerId 主材推荐bannerID
     * @return 结果
     */
    public int deleteZxMaterialBannerById(Long materialBannerId);

    /**
     * 批量删除主材推荐banner
     * 
     * @param materialBannerIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxMaterialBannerByIds(String[] materialBannerIds);

	public int checkXqExists(Long materialBannerId);

	public int changeStatus(ZxMaterialBanner zxMaterialBanner);

	public List<PageData> selectSelectedXqList(Long materialBannerId);

	public void deleteBannerImgDept(PageData pd);

	public void saveXq(PageData pd);
}
