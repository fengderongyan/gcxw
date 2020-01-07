package com.ruoyi.manage.fee.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.fee.mapper.TXqPushFeeMapper;
import com.ruoyi.manage.fee.domain.TXqPushFee;
import com.ruoyi.manage.fee.service.ITXqPushFeeService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 业主缴费Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-20
 */
@Service
public class TXqPushFeeServiceImpl implements ITXqPushFeeService 
{
    @Autowired
    private TXqPushFeeMapper tXqPushFeeMapper;

    /**
     * 查询业主缴费
     * 
     * @param id 业主缴费ID
     * @return 业主缴费
     */
    @Override
    public TXqPushFee selectTXqPushFeeById(Long id)
    {
        return tXqPushFeeMapper.selectTXqPushFeeById(id);
    }

    /**
     * 查询业主缴费列表
     * 
     * @param tXqPushFee 业主缴费
     * @return 业主缴费
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<TXqPushFee> selectTXqPushFeeList(TXqPushFee tXqPushFee)
    {
        return tXqPushFeeMapper.selectTXqPushFeeList(tXqPushFee);
    }

    /**
     * 新增业主缴费
     * 
     * @param tXqPushFee 业主缴费
     * @return 结果
     */
    @Override
    public int insertTXqPushFee(TXqPushFee tXqPushFee)
    {
        return tXqPushFeeMapper.insertTXqPushFee(tXqPushFee);
    }

    /**
     * 修改业主缴费
     * 
     * @param tXqPushFee 业主缴费
     * @return 结果
     */
    @Override
    public int updateTXqPushFee(TXqPushFee tXqPushFee)
    {
        return tXqPushFeeMapper.updateTXqPushFee(tXqPushFee);
    }

    /**
     * 删除业主缴费对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqPushFeeByIds(String ids)
    {
        return tXqPushFeeMapper.deleteTXqPushFeeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除业主缴费信息
     * 
     * @param id 业主缴费ID
     * @return 结果
     */
    public int deleteTXqPushFeeById(Long id)
    {
        return tXqPushFeeMapper.deleteTXqPushFeeById(id);
    }
}
