package com.ruoyi.manage.floor.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.security.ShiroUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.floor.mapper.XqFloorMapper;
import com.ruoyi.manage.floor.domain.XqFloor;
import com.ruoyi.manage.floor.service.IXqFloorService;
import com.ruoyi.project.system.user.domain.User;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 楼栋管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Service
public class XqFloorServiceImpl implements IXqFloorService 
{
    @Autowired
    private XqFloorMapper xqFloorMapper;

    /**
     * 查询楼栋管理
     * 
     * @param floorId 楼栋管理ID
     * @return 楼栋管理
     */
    @Override
    public XqFloor selectXqFloorById(Long floorId)
    {
        return xqFloorMapper.selectXqFloorById(floorId);
    }

    /**
     * 查询楼栋管理列表
     * 
     * @param xqFloor 楼栋管理
     * @return 楼栋管理
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<XqFloor> selectXqFloorList(XqFloor xqFloor)
    {
        return xqFloorMapper.selectXqFloorList(xqFloor);
    }

    /**
     * 新增楼栋管理
     * 
     * @param xqFloor 楼栋管理
     * @return 结果
     */
    @Override
    public int insertXqFloor(XqFloor xqFloor)
    {
    	System.out.println("========================= : " + xqFloor);
		Date date = DateUtils.getNowDate();
        xqFloor.setCreateTime(date);
        xqFloor.setUpdateTime(date);
        return xqFloorMapper.insertXqFloor(xqFloor);
    }

    /**
     * 修改楼栋管理
     * 
     * @param xqFloor 楼栋管理
     * @return 结果
     */
    @Override
    public int updateXqFloor(XqFloor xqFloor)
    {
        xqFloor.setUpdateTime(DateUtils.getNowDate());
        return xqFloorMapper.updateXqFloor(xqFloor);
    }

    /**
     * 删除楼栋管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteXqFloorByIds(String ids)
    {
        return xqFloorMapper.deleteXqFloorByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除楼栋管理信息
     * 
     * @param floorId 楼栋管理ID
     * @return 结果
     */
    public int deleteXqFloorById(Long floorId)
    {
        return xqFloorMapper.deleteXqFloorById(floorId);
    }

	@Override
	public int checkFloor(XqFloor xqFloor) {
		System.out.println("======================= : " + xqFloor);
		return xqFloorMapper.checkFloor(xqFloor);
	}
}
