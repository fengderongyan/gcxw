package com.ruoyi.manage.prize.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.prize.mapper.TXqBirthPrizeMapper;
import com.ruoyi.manage.prize.domain.TXqBirthPrize;
import com.ruoyi.manage.prize.service.ITXqBirthPrizeService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 生日奖品管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Service
public class TXqBirthPrizeServiceImpl implements ITXqBirthPrizeService 
{
    @Autowired
    private TXqBirthPrizeMapper tXqBirthPrizeMapper;

    /**
     * 查询生日奖品管理
     * 
     * @param id 生日奖品管理ID
     * @return 生日奖品管理
     */
    @Override
    public TXqBirthPrize selectTXqBirthPrizeById(Long id)
    {
        return tXqBirthPrizeMapper.selectTXqBirthPrizeById(id);
    }

    /**
     * 查询生日奖品管理列表
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 生日奖品管理
     */
    @Override
    public List<TXqBirthPrize> selectTXqBirthPrizeList(TXqBirthPrize tXqBirthPrize)
    {
        return tXqBirthPrizeMapper.selectTXqBirthPrizeList(tXqBirthPrize);
    }

    /**
     * 新增生日奖品管理
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 结果
     */
    @Override
    public int insertTXqBirthPrize(TXqBirthPrize tXqBirthPrize)
    {
        return tXqBirthPrizeMapper.insertTXqBirthPrize(tXqBirthPrize);
    }

    /**
     * 修改生日奖品管理
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 结果
     */
    @Override
    public int updateTXqBirthPrize(TXqBirthPrize tXqBirthPrize)
    {
        return tXqBirthPrizeMapper.updateTXqBirthPrize(tXqBirthPrize);
    }

    /**
     * 删除生日奖品管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqBirthPrizeByIds(String ids)
    {
        return tXqBirthPrizeMapper.deleteTXqBirthPrizeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除生日奖品管理信息
     * 
     * @param id 生日奖品管理ID
     * @return 结果
     */
    public int deleteTXqBirthPrizeById(Long id)
    {
        return tXqBirthPrizeMapper.deleteTXqBirthPrizeById(id);
    }
}
