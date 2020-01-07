package com.ruoyi.manage.bxinfo.mapper;

import com.ruoyi.manage.bxinfo.domain.TXqBxInfo;
import java.util.List;

/**
 * 报修管理Mapper接口
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
public interface TXqBxInfoMapper 
{
    /**
     * 查询报修管理
     * 
     * @param id 报修管理ID
     * @return 报修管理
     */
    public TXqBxInfo selectTXqBxInfoById(Long id);

    /**
     * 查询报修管理列表
     * 
     * @param tXqBxInfo 报修管理
     * @return 报修管理集合
     */
    public List<TXqBxInfo> selectTXqBxInfoList(TXqBxInfo tXqBxInfo);

    /**
     * 新增报修管理
     * 
     * @param tXqBxInfo 报修管理
     * @return 结果
     */
    public int insertTXqBxInfo(TXqBxInfo tXqBxInfo);

    /**
     * 修改报修管理
     * 
     * @param tXqBxInfo 报修管理
     * @return 结果
     */
    public int updateTXqBxInfo(TXqBxInfo tXqBxInfo);

    /**
     * 删除报修管理
     * 
     * @param id 报修管理ID
     * @return 结果
     */
    public int deleteTXqBxInfoById(Long id);

    /**
     * 批量删除报修管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqBxInfoByIds(String[] ids);
}
