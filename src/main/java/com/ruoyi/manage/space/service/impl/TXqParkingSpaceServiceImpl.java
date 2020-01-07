package com.ruoyi.manage.space.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.space.mapper.TXqParkingSpaceMapper;
import com.ruoyi.manage.space.domain.TXqParkingSpace;
import com.ruoyi.manage.space.service.ITXqParkingSpaceService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 停车费Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Service
public class TXqParkingSpaceServiceImpl implements ITXqParkingSpaceService 
{
    @Autowired
    private TXqParkingSpaceMapper tXqParkingSpaceMapper;

    /**
     * 查询停车费
     * 
     * @param id 停车费ID
     * @return 停车费
     */
    @Override
    public TXqParkingSpace selectTXqParkingSpaceById(Long id)
    {
        return tXqParkingSpaceMapper.selectTXqParkingSpaceById(id);
    }
    
    public TXqParkingSpace selectTXqParkingSpaceByIdScore(Long id)
    {
        return tXqParkingSpaceMapper.selectTXqParkingSpaceByIdScore(id);
    }

    /**
     * 查询停车费列表
     * 
     * @param tXqParkingSpace 停车费
     * @return 停车费
     */
    @Override
    public List<TXqParkingSpace> selectTXqParkingSpaceList(TXqParkingSpace tXqParkingSpace)
    {
        return tXqParkingSpaceMapper.selectTXqParkingSpaceList(tXqParkingSpace);
    }

    /**
     * 新增停车费
     * 
     * @param tXqParkingSpace 停车费
     * @return 结果
     */
    @Override
    public int insertTXqParkingSpace(TXqParkingSpace tXqParkingSpace)
    {
		Date date = DateUtils.getNowDate();
        tXqParkingSpace.setCreateTime(date);
        tXqParkingSpace.setUpdateTime(date);
        return tXqParkingSpaceMapper.insertTXqParkingSpace(tXqParkingSpace);
    }

    /**
     * 修改停车费
     * 
     * @param tXqParkingSpace 停车费
     * @return 结果
     */
    @Override
    public int updateTXqParkingSpace(TXqParkingSpace tXqParkingSpace)
    {
        tXqParkingSpace.setUpdateTime(DateUtils.getNowDate());
        return tXqParkingSpaceMapper.updateTXqParkingSpace(tXqParkingSpace);
    }

    /**
     * 删除停车费对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqParkingSpaceByIds(String ids)
    {
        return tXqParkingSpaceMapper.deleteTXqParkingSpaceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除停车费信息
     * 
     * @param id 停车费ID
     * @return 结果
     */
    public int deleteTXqParkingSpaceById(Long id)
    {
        return tXqParkingSpaceMapper.deleteTXqParkingSpaceById(id);
    }

	@Override
	public int checkSpace(TXqParkingSpace tXqParkingSpace) {
		return tXqParkingSpaceMapper.checkSpace(tXqParkingSpace);
	}

	@Override
	public Long selectDeptIdByFloorId(TXqParkingSpace tXqParkingSpace) {
		return tXqParkingSpaceMapper.selectDeptIdByFloorId(tXqParkingSpace);
	}

	@Override
	public int pushSpace(Long id) {
		// TODO Auto-generated method stub
		return tXqParkingSpaceMapper.pushSpace(id);
	}

	@Override
	public int savePush(PageData pd) {
		
		return  tXqParkingSpaceMapper.savePush(pd);
	}

	@Override
	public PageData getSomeInfo(Long ids) {
		return tXqParkingSpaceMapper.getSomeInfo(ids);
	}
}
