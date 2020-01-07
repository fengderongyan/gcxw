package com.ruoyi.manage.fee.mapper;

import com.ruoyi.manage.fee.domain.TXqPushFee;
import java.util.List;

/**
 * 业主缴费Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-20
 */
public interface TXqPushFeeMapper 
{
    /**
     * 查询业主缴费
     * 
     * @param id 业主缴费ID
     * @return 业主缴费
     */
    public TXqPushFee selectTXqPushFeeById(Long id);

    /**
     * 查询业主缴费列表
     * 
     * @param tXqPushFee 业主缴费
     * @return 业主缴费集合
     */
    public List<TXqPushFee> selectTXqPushFeeList(TXqPushFee tXqPushFee);

    /**
     * 新增业主缴费
     * 
     * @param tXqPushFee 业主缴费
     * @return 结果
     */
    public int insertTXqPushFee(TXqPushFee tXqPushFee);

    /**
     * 修改业主缴费
     * 
     * @param tXqPushFee 业主缴费
     * @return 结果
     */
    public int updateTXqPushFee(TXqPushFee tXqPushFee);

    /**
     * 删除业主缴费
     * 
     * @param id 业主缴费ID
     * @return 结果
     */
    public int deleteTXqPushFeeById(Long id);

    /**
     * 批量删除业主缴费
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqPushFeeByIds(String[] ids);
}
