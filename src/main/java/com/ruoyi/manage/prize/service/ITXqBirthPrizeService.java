package com.ruoyi.manage.prize.service;

import com.ruoyi.manage.prize.domain.TXqBirthPrize;
import java.util.List;

/**
 * 生日奖品管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public interface ITXqBirthPrizeService 
{
    /**
     * 查询生日奖品管理
     * 
     * @param id 生日奖品管理ID
     * @return 生日奖品管理
     */
    public TXqBirthPrize selectTXqBirthPrizeById(Long id);

    /**
     * 查询生日奖品管理列表
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 生日奖品管理集合
     */
    public List<TXqBirthPrize> selectTXqBirthPrizeList(TXqBirthPrize tXqBirthPrize);

    /**
     * 新增生日奖品管理
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 结果
     */
    public int insertTXqBirthPrize(TXqBirthPrize tXqBirthPrize);

    /**
     * 修改生日奖品管理
     * 
     * @param tXqBirthPrize 生日奖品管理
     * @return 结果
     */
    public int updateTXqBirthPrize(TXqBirthPrize tXqBirthPrize);

    /**
     * 批量删除生日奖品管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqBirthPrizeByIds(String ids);

    /**
     * 删除生日奖品管理信息
     * 
     * @param id 生日奖品管理ID
     * @return 结果
     */
    public int deleteTXqBirthPrizeById(Long id);
}
