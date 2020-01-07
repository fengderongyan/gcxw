package com.ruoyi.manage.jssb.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.jssb.mapper.TXqJssbMapper;
import com.ruoyi.manage.jssb.domain.TXqJssb;
import com.ruoyi.manage.jssb.service.ITXqJssbService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 急事速办Service业务层处理
 * 
 * @author zhangchengcai
 * @date 2019-12-10
 */
@Service
public class TXqJssbServiceImpl implements ITXqJssbService 
{
    @Autowired
    private TXqJssbMapper tXqJssbMapper;

    /**
     * 查询急事速办
     * 
     * @param id 急事速办ID
     * @return 急事速办
     */
    @Override
    public TXqJssb selectTXqJssbById(Long id)
    {
        return tXqJssbMapper.selectTXqJssbById(id);
    }

    /**
     * 查询急事速办列表
     * 
     * @param tXqJssb 急事速办
     * @return 急事速办
     */
    @Override
    public List<TXqJssb> selectTXqJssbList(TXqJssb tXqJssb)
    {
        return tXqJssbMapper.selectTXqJssbList(tXqJssb);
    }

    /**
     * 新增急事速办
     * 
     * @param tXqJssb 急事速办
     * @return 结果
     */
    @Override
    public int insertTXqJssb(TXqJssb tXqJssb)
    {
		Date date = DateUtils.getNowDate();
        tXqJssb.setCreateTime(date);
        tXqJssb.setUpdateTime(date);
        return tXqJssbMapper.insertTXqJssb(tXqJssb);
    }

    /**
     * 修改急事速办
     * 
     * @param tXqJssb 急事速办
     * @return 结果
     */
    @Override
    public int updateTXqJssb(TXqJssb tXqJssb)
    {
        tXqJssb.setUpdateTime(DateUtils.getNowDate());
        return tXqJssbMapper.updateTXqJssb(tXqJssb);
    }

    /**
     * 删除急事速办对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqJssbByIds(String ids)
    {
        return tXqJssbMapper.deleteTXqJssbByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除急事速办信息
     * 
     * @param id 急事速办ID
     * @return 结果
     */
    public int deleteTXqJssbById(Long id)
    {
        return tXqJssbMapper.deleteTXqJssbById(id);
    }
}
