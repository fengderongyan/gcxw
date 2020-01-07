package com.ruoyi.manage.property.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.property.mapper.TXqPropertyMapper;
import com.ruoyi.manage.property.domain.TXqProperty;
import com.ruoyi.manage.property.service.ITXqPropertyService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 物业费Service业务层处理
 * 
 * @author zhangchengcai
 * @date 2019-12-05
 */
@Service
public class TXqPropertyServiceImpl implements ITXqPropertyService 
{
    @Autowired
    private TXqPropertyMapper tXqPropertyMapper;

    /**
     * 查询物业费
     * 
     * @param id 物业费ID
     * @return 物业费
     */
    @Override
    public TXqProperty selectTXqPropertyById(Long id)
    {
        return tXqPropertyMapper.selectTXqPropertyById(id);
    }
    
    public TXqProperty selectTXqPropertyByIdScore(Long id)
    {
        return tXqPropertyMapper.selectTXqPropertyByIdScore(id);
    }

    /**
     * 查询物业费列表
     * 
     * @param tXqProperty 物业费
     * @return 物业费
     */
    @Override
    public List<TXqProperty> selectTXqPropertyList(TXqProperty tXqProperty)
    {
        return tXqPropertyMapper.selectTXqPropertyList(tXqProperty);
    }

    /**
     * 新增物业费
     * 
     * @param tXqProperty 物业费
     * @return 结果
     */
    @Override
    public int insertTXqProperty(TXqProperty tXqProperty)
    {
		Date date = DateUtils.getNowDate();
        tXqProperty.setCreateTime(date);
        return tXqPropertyMapper.insertTXqProperty(tXqProperty);
    }

    /**
     * 修改物业费
     * 
     * @param tXqProperty 物业费
     * @return 结果
     */
    @Override
    public int updateTXqProperty(TXqProperty tXqProperty)
    {
        tXqProperty.setUpdateTime(DateUtils.getNowDate());
        return tXqPropertyMapper.updateTXqProperty(tXqProperty);
    }

    /**
     * 删除物业费对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqPropertyByIds(String ids)
    {
        return tXqPropertyMapper.deleteTXqPropertyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除物业费信息
     * 
     * @param id 物业费ID
     * @return 结果
     */
    public int deleteTXqPropertyById(Long id)
    {
        return tXqPropertyMapper.deleteTXqPropertyById(id);
    }

	@Override
	public int PushTXqPropertyById(Long id) {
		return tXqPropertyMapper.PushTXqPropertyById(id);
	}

	@Override
	public PageData getSomeInfo(Long ids) {
		return tXqPropertyMapper.getSomeInfo(ids);
	}

	@Override
	public int savePush(PageData pd) {
		return tXqPropertyMapper.savePush(pd);
	}
}
