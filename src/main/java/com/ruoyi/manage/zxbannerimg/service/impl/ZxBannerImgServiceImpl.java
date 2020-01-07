package com.ruoyi.manage.zxbannerimg.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxbannerimg.mapper.ZxBannerImgMapper;
import com.ruoyi.manage.zxbannerimg.domain.ZxBannerImg;
import com.ruoyi.manage.zxbannerimg.service.IZxBannerImgService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.web.service.BaseService;

/**
 * 装修首页bannerService业务层处理
 * 
 * @author yanbs
 * @date 2019-12-17
 */
@Service
public class ZxBannerImgServiceImpl extends BaseService implements IZxBannerImgService 
{
    @Autowired
    private ZxBannerImgMapper zxBannerImgMapper;
    
    @Autowired
    private IDeptService deptService;

    /**
     * 查询装修首页banner
     * 
     * @param zxBannerImgId 装修首页bannerID
     * @return 装修首页banner
     */
    @Override
    public ZxBannerImg selectZxBannerImgById(Long zxBannerImgId)
    {
        return zxBannerImgMapper.selectZxBannerImgById(zxBannerImgId);
    }

    /**
     * 查询装修首页banner列表
     * 
     * @param zxBannerImg 装修首页banner
     * @return 装修首页banner
     */
    @Override
    public List<ZxBannerImg> selectZxBannerImgList(ZxBannerImg zxBannerImg)
    {
        return zxBannerImgMapper.selectZxBannerImgList(zxBannerImg);
    }

    /**
     * 新增装修首页banner
     * 
     * @param zxBannerImg 装修首页banner
     * @return 结果
     */
    @Override
    public int insertZxBannerImg(ZxBannerImg zxBannerImg)
    {
		Date date = DateUtils.getNowDate();
        zxBannerImg.setCreateTime(date);
        zxBannerImg.setUpdateTime(date);
        zxBannerImg.setCreateBy(this.getSysUser().getLoginName());
        return zxBannerImgMapper.insertZxBannerImg(zxBannerImg);
    }

    /**
     * 修改装修首页banner
     * 
     * @param zxBannerImg 装修首页banner
     * @return 结果
     */
    @Override
    public int updateZxBannerImg(ZxBannerImg zxBannerImg)
    {
        zxBannerImg.setUpdateTime(DateUtils.getNowDate());
        zxBannerImg.setUpdateBy(this.getSysUser().getLoginName());
        return zxBannerImgMapper.updateZxBannerImg(zxBannerImg);
    }

    /**
     * 删除装修首页banner对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxBannerImgByIds(String ids)
    {
        return zxBannerImgMapper.deleteZxBannerImgByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修首页banner信息
     * 
     * @param zxBannerImgId 装修首页bannerID
     * @return 结果
     */
    public int deleteZxBannerImgById(Long zxBannerImgId)
    {
        return zxBannerImgMapper.deleteZxBannerImgById(zxBannerImgId);
    }

	@Override
	public List<PageData> selectXqList(Long zxBannerImgId, List<Dept> xqList) {
		List<PageData> selectedXqList = zxBannerImgMapper.selectSelectedXqList(zxBannerImgId);
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
	public int saveXq(Long zxBannerImgId, Long[] deptIds) {
		if(deptIds != null && deptIds.length > 0){
			List<Dept> xqList = deptService.selectXqList(new Dept());
			PageData pd = new PageData();
			pd.put("xqList", xqList);
			pd.put("zxBannerImgId", zxBannerImgId);
			//只能删除自己所属权限下的小区
			zxBannerImgMapper.deleteBannerImgDept(pd);
			
			pd.put("deptIds", deptIds);
			zxBannerImgMapper.saveXq(pd);
			
		}
		return 1;
	}

	@Override
	public int changeStatus(ZxBannerImg zxBannerImg) {
		return zxBannerImgMapper.changeStatus(zxBannerImg);
	}

	@Override
	public int checkXqExists(Long zxBannerImgId) {
		
		return zxBannerImgMapper.checkXqExists(zxBannerImgId);
	}
}
