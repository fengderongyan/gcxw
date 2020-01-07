package com.ruoyi.manage.detail.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.detail.mapper.TXqPropertyDetailMapper;
import com.ruoyi.manage.detail.domain.TXqPropertyDetail;
import com.ruoyi.manage.detail.service.ITXqPropertyDetailService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 物业明细Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-05
 */
@Service
public class TXqPropertyDetailServiceImpl implements ITXqPropertyDetailService 
{
    @Autowired
    private TXqPropertyDetailMapper tXqPropertyDetailMapper;

    /**
     * 查询物业明细
     * 
     * @param id 物业明细ID
     * @return 物业明细
     */
    @Override
    public TXqPropertyDetail selectTXqPropertyDetailById(Long id)
    {
        return tXqPropertyDetailMapper.selectTXqPropertyDetailById(id);
    }

    /**
     * 查询物业明细列表
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 物业明细
     */
    @Override
    public List<TXqPropertyDetail> selectTXqPropertyDetailList(TXqPropertyDetail tXqPropertyDetail)
    {
        return tXqPropertyDetailMapper.selectTXqPropertyDetailList(tXqPropertyDetail);
    }

    /**
     * 新增物业明细
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 结果
     */
    @Override
    public int insertTXqPropertyDetail(TXqPropertyDetail tXqPropertyDetail)
    {
		Date date = DateUtils.getNowDate();
        tXqPropertyDetail.setCreateTime(date);
        tXqPropertyDetail.setUpdateTime(date);
        return tXqPropertyDetailMapper.insertTXqPropertyDetail(tXqPropertyDetail);
    }

    /**
     * 修改物业明细
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 结果
     */
    @Override
    public int updateTXqPropertyDetail(TXqPropertyDetail tXqPropertyDetail)
    {
        tXqPropertyDetail.setUpdateTime(DateUtils.getNowDate());
        return tXqPropertyDetailMapper.updateTXqPropertyDetail(tXqPropertyDetail);
    }

    /**
     * 删除物业明细对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqPropertyDetailByIds(String ids)
    {
        return tXqPropertyDetailMapper.deleteTXqPropertyDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除物业明细信息
     * 
     * @param id 物业明细ID
     * @return 结果
     */
    public int deleteTXqPropertyDetailById(Long id)
    {
        return tXqPropertyDetailMapper.deleteTXqPropertyDetailById(id);
    }
}
