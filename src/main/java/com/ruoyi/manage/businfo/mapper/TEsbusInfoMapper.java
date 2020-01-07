package com.ruoyi.manage.businfo.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.businfo.domain.TEsbusInfo;
import java.util.List;

/**
 * 二手交易管理Mapper接口
 * 
 * @author zhangchengcai
 * @date 2019-12-19
 */
public interface TEsbusInfoMapper 
{
    /**
     * 查询二手交易管理
     * 
     * @param id 二手交易管理ID
     * @return 二手交易管理
     */
    public TEsbusInfo selectTEsbusInfoById(Long id);

    /**
     * 查询二手交易管理列表
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 二手交易管理集合
     */
    public List<TEsbusInfo> selectTEsbusInfoList(TEsbusInfo tEsbusInfo);

    /**
     * 新增二手交易管理
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 结果
     */
    public int insertTEsbusInfo(TEsbusInfo tEsbusInfo);

    /**
     * 修改二手交易管理
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 结果
     */
    public int updateTEsbusInfo(TEsbusInfo tEsbusInfo);

    /**
     * 删除二手交易管理
     * 
     * @param id 二手交易管理ID
     * @return 结果
     */
    public int deleteTEsbusInfoById(Long id);

    /**
     * 批量删除二手交易管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTEsbusInfoByIds(String[] ids);
    
    public List selectBanner(Long id);
    
    public List selectBase(Long id);
}
