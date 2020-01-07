package com.ruoyi.manage.zxdesigner.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxdesigner.mapper.ZxDesignerMapper;
import com.ruoyi.manage.zxdesigner.domain.ZxDesigner;
import com.ruoyi.manage.zxdesigner.service.IZxDesignerService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 设计师管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Service
public class ZxDesignerServiceImpl implements IZxDesignerService 
{
    @Autowired
    private ZxDesignerMapper zxDesignerMapper;

    /**
     * 查询设计师管理
     * 
     * @param designerId 设计师管理ID
     * @return 设计师管理
     */
    @Override
    public ZxDesigner selectZxDesignerById(Long designerId)
    {
        return zxDesignerMapper.selectZxDesignerById(designerId);
    }

    /**
     * 查询设计师管理列表
     * 
     * @param zxDesigner 设计师管理
     * @return 设计师管理
     */
    @Override
    public List<ZxDesigner> selectZxDesignerList(ZxDesigner zxDesigner)
    {
        return zxDesignerMapper.selectZxDesignerList(zxDesigner);
    }

    /**
     * 新增设计师管理
     * 
     * @param zxDesigner 设计师管理
     * @return 结果
     */
    @Override
    public int insertZxDesigner(ZxDesigner zxDesigner)
    {
		Date date = DateUtils.getNowDate();
        zxDesigner.setCreateTime(date);
        zxDesigner.setUpdateTime(date);
        return zxDesignerMapper.insertZxDesigner(zxDesigner);
    }

    /**
     * 修改设计师管理
     * 
     * @param zxDesigner 设计师管理
     * @return 结果
     */
    @Override
    public int updateZxDesigner(ZxDesigner zxDesigner)
    {
        zxDesigner.setUpdateTime(DateUtils.getNowDate());
        return zxDesignerMapper.updateZxDesigner(zxDesigner);
    }

    /**
     * 删除设计师管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxDesignerByIds(String ids)
    {
        return zxDesignerMapper.deleteZxDesignerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除设计师管理信息
     * 
     * @param designerId 设计师管理ID
     * @return 结果
     */
    public int deleteZxDesignerById(Long designerId)
    {
        return zxDesignerMapper.deleteZxDesignerById(designerId);
    }

	@Override
	public int changeStatus(ZxDesigner zxDesigner) {
		// TODO Auto-generated method stub
		return zxDesignerMapper.changeStatus(zxDesigner);
	}
}
