package com.ruoyi.manage.zxmaterialbanner.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxmaterialbanner.mapper.ZxMaterialBannerMapper;
import com.ruoyi.manage.zxmaterialbanner.domain.ZxMaterialBanner;
import com.ruoyi.manage.zxmaterialbanner.service.IZxMaterialBannerService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 主材推荐bannerService业务层处理
 * 
 * @author yanbs
 * @date 2020-01-06
 */
@Service
public class ZxMaterialBannerServiceImpl implements IZxMaterialBannerService 
{
    @Autowired
    private ZxMaterialBannerMapper zxMaterialBannerMapper;
    @Autowired
    private IDeptService deptService;
    
    /**
     * 查询主材推荐banner
     * 
     * @param materialBannerId 主材推荐bannerID
     * @return 主材推荐banner
     */
    @Override
    public ZxMaterialBanner selectZxMaterialBannerById(Long materialBannerId)
    {
        return zxMaterialBannerMapper.selectZxMaterialBannerById(materialBannerId);
    }

    /**
     * 查询主材推荐banner列表
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 主材推荐banner
     */
    @Override
    public List<ZxMaterialBanner> selectZxMaterialBannerList(ZxMaterialBanner zxMaterialBanner)
    {
        return zxMaterialBannerMapper.selectZxMaterialBannerList(zxMaterialBanner);
    }

    /**
     * 新增主材推荐banner
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 结果
     */
    @Override
    public int insertZxMaterialBanner(ZxMaterialBanner zxMaterialBanner)
    {
		Date date = DateUtils.getNowDate();
        zxMaterialBanner.setCreateTime(date);
        zxMaterialBanner.setUpdateTime(date);
        return zxMaterialBannerMapper.insertZxMaterialBanner(zxMaterialBanner);
    }

    /**
     * 修改主材推荐banner
     * 
     * @param zxMaterialBanner 主材推荐banner
     * @return 结果
     */
    @Override
    public int updateZxMaterialBanner(ZxMaterialBanner zxMaterialBanner)
    {
        zxMaterialBanner.setUpdateTime(DateUtils.getNowDate());
        return zxMaterialBannerMapper.updateZxMaterialBanner(zxMaterialBanner);
    }

    /**
     * 删除主材推荐banner对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxMaterialBannerByIds(String ids)
    {
        return zxMaterialBannerMapper.deleteZxMaterialBannerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除主材推荐banner信息
     * 
     * @param materialBannerId 主材推荐bannerID
     * @return 结果
     */
    public int deleteZxMaterialBannerById(Long materialBannerId)
    {
        return zxMaterialBannerMapper.deleteZxMaterialBannerById(materialBannerId);
    }

	@Override
	public int checkXqExists(Long materialBannerId) {
		// TODO Auto-generated method stub
		return zxMaterialBannerMapper.checkXqExists(materialBannerId);
	}

	@Override
	public int changeStatus(ZxMaterialBanner zxMaterialBanner) {
		// TODO Auto-generated method stub
		return zxMaterialBannerMapper.changeStatus(zxMaterialBanner);
	}

	@Override
	public List<PageData> selectXqList(Long materialBannerId, List<Dept> xqList) {
		List<PageData> selectedXqList = zxMaterialBannerMapper.selectSelectedXqList(materialBannerId);
		List<PageData> xqListWithSelect = new ArrayList<PageData>();
		if(xqList != null && xqList.size() > 0){
			for (Dept dept : xqList) {
				PageData tmp = new PageData();
				tmp.put("deptId", dept.getDeptId());
				tmp.put("deptName", dept.getDeptName());
				tmp.put("flag", "false");
				String deptId = dept.getDeptId().toString();
				if(selectedXqList != null && selectedXqList.size() > 0){
					for (PageData pageData : selectedXqList) {
						String selectDeptId = pageData.getString("deptId");
						if(selectDeptId.equals(deptId)){
							tmp.put("flag", "true");
							break;
						}
					}
				}
				
				xqListWithSelect.add(tmp);
				
			}
			
		}
		return xqListWithSelect;
	}

	@Override
	public int saveXq(Long materialBannerId, Long[] deptIds) {
		if(deptIds != null && deptIds.length > 0){
			List<Dept> xqList = deptService.selectXqList(new Dept());
			PageData pd = new PageData();
			pd.put("xqList", xqList);
			pd.put("materialBannerId", materialBannerId);
			//只能删除自己所属权限下的小区
			zxMaterialBannerMapper.deleteBannerImgDept(pd);
			
			pd.put("deptIds", deptIds);
			zxMaterialBannerMapper.saveXq(pd);
			
		}
		return 1;
	}
}
