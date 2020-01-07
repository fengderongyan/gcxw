package com.ruoyi.manage.bxinfo.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.bxinfo.mapper.TXqBxInfoMapper;
import com.ruoyi.manage.bxinfo.domain.TXqBxInfo;
import com.ruoyi.manage.bxinfo.service.ITXqBxInfoService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 报修管理Service业务层处理
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
@Service
public class TXqBxInfoServiceImpl implements ITXqBxInfoService 
{
    @Autowired
    private TXqBxInfoMapper tXqBxInfoMapper;

    /**
     * 查询报修管理
     * 
     * @param id 报修管理ID
     * @return 报修管理
     */
    @Override
    public TXqBxInfo selectTXqBxInfoById(Long id)
    {
        return tXqBxInfoMapper.selectTXqBxInfoById(id);
    }

    /**
     * 查询报修管理列表
     * 
     * @param tXqBxInfo 报修管理
     * @return 报修管理
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<TXqBxInfo> selectTXqBxInfoList(TXqBxInfo tXqBxInfo)
    {
        return tXqBxInfoMapper.selectTXqBxInfoList(tXqBxInfo);
    }

    /**
     * 新增报修管理
     * 
     * @param tXqBxInfo 报修管理
     * @return 结果
     */
    @Override
    public int insertTXqBxInfo(TXqBxInfo tXqBxInfo)
    {
        return tXqBxInfoMapper.insertTXqBxInfo(tXqBxInfo);
    }

    /**
     * 修改报修管理
     * 
     * @param tXqBxInfo 报修管理
     * @return 结果
     */
    @Override
    public int updateTXqBxInfo(TXqBxInfo tXqBxInfo)
    {
        return tXqBxInfoMapper.updateTXqBxInfo(tXqBxInfo);
    }

    /**
     * 删除报修管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTXqBxInfoByIds(String ids)
    {
        return tXqBxInfoMapper.deleteTXqBxInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报修管理信息
     * 
     * @param id 报修管理ID
     * @return 结果
     */
    public int deleteTXqBxInfoById(Long id)
    {
        return tXqBxInfoMapper.deleteTXqBxInfoById(id);
    }
}
