package com.ruoyi.manage.zxbannervideo.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.manage.zxbannervideo.mapper.ZxBannerVideoMapper;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.manage.zxbannervideo.service.IZxBannerVideoService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.web.service.BaseService;

/**
 * 装修首页视频管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Service
public class ZxBannerVideoServiceImpl extends BaseService implements IZxBannerVideoService 
{
    @Autowired
    private ZxBannerVideoMapper zxBannerVideoMapper;
    
    @Autowired
    private IDeptService deptService;

    /**
     * 查询装修首页视频管理
     * 
     * @param zxBannerVideoId 装修首页视频管理ID
     * @return 装修首页视频管理
     */
    @Override
    public ZxBannerVideo selectZxBannerVideoById(Long zxBannerVideoId)
    {
        return zxBannerVideoMapper.selectZxBannerVideoById(zxBannerVideoId);
    }

    /**
     * 查询装修首页视频管理列表
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 装修首页视频管理
     */
    @Override
    public List<ZxBannerVideo> selectZxBannerVideoList(ZxBannerVideo zxBannerVideo)
    {
        return zxBannerVideoMapper.selectZxBannerVideoList(zxBannerVideo);
    }

    /**
     * 新增装修首页视频管理
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 结果
     */
    @Override
    public int insertZxBannerVideo(ZxBannerVideo zxBannerVideo)
    {
		Date date = DateUtils.getNowDate();
        zxBannerVideo.setCreateTime(date);
        zxBannerVideo.setUpdateTime(date);
        return zxBannerVideoMapper.insertZxBannerVideo(zxBannerVideo);
    }

    /**
     * 修改装修首页视频管理
     * 
     * @param zxBannerVideo 装修首页视频管理
     * @return 结果
     */
    @Override
    public int updateZxBannerVideo(ZxBannerVideo zxBannerVideo)
    {
        zxBannerVideo.setUpdateTime(DateUtils.getNowDate());
        return zxBannerVideoMapper.updateZxBannerVideo(zxBannerVideo);
    }

    /**
     * 删除装修首页视频管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxBannerVideoByIds(String ids)
    {
        return zxBannerVideoMapper.deleteZxBannerVideoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修首页视频管理信息
     * 
     * @param zxBannerVideoId 装修首页视频管理ID
     * @return 结果
     */
    public int deleteZxBannerVideoById(Long zxBannerVideoId)
    {
        return zxBannerVideoMapper.deleteZxBannerVideoById(zxBannerVideoId);
    }

	@Override
	public int changeStatus(ZxBannerVideo zxBannerVideo) {
		// TODO Auto-generated method stub
		return zxBannerVideoMapper.changeStatus(zxBannerVideo);
	}

	@Override
	public List<PageData> selectXqList(Long zxBannerVideoId, List<Dept> xqList) {
		List<PageData> selectedXqList = zxBannerVideoMapper.selectSelectedXqList(zxBannerVideoId);
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
	@Transactional
	public int saveXq(Long zxBannerVideoId, Long[] deptIds) {
		if(deptIds != null && deptIds.length > 0){
			List<Dept> xqList = deptService.selectXqList(new Dept());
			PageData pd = new PageData();
			pd.put("xqList", xqList);
			pd.put("zxBannerVideoId", zxBannerVideoId);
			//只能删除自己所属权限下的小区
			zxBannerVideoMapper.deleteVideoDept(pd);
			
			pd.put("deptIds", deptIds);
			zxBannerVideoMapper.saveXq(pd);
			
		}
		return 1;
	}

	@Override
	public int checkXqExists(Long zxBannerVideoId) {
		// TODO Auto-generated method stub
		return zxBannerVideoMapper.checkXqExists(zxBannerVideoId);
	}
	
}
