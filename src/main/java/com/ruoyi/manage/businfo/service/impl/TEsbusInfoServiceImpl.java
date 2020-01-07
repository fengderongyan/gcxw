package com.ruoyi.manage.businfo.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.businfo.mapper.TEsbusInfoMapper;
import com.ruoyi.manage.businfo.domain.TEsbusInfo;
import com.ruoyi.manage.businfo.service.ITEsbusInfoService;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 二手交易管理Service业务层处理
 * 
 * @author zhangchengcai
 * @date 2019-12-19
 */
@Service
public class TEsbusInfoServiceImpl implements ITEsbusInfoService 
{
    @Autowired
    private TEsbusInfoMapper tEsbusInfoMapper;

    /**
     * 查询二手交易管理
     * 
     * @param id 二手交易管理ID
     * @return 二手交易管理
     */
    @Override
    public TEsbusInfo selectTEsbusInfoById(Long id)
    {
        return tEsbusInfoMapper.selectTEsbusInfoById(id);
    }

    /**
     * 查询二手交易管理列表
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 二手交易管理
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<TEsbusInfo> selectTEsbusInfoList(TEsbusInfo tEsbusInfo)
    {
        return tEsbusInfoMapper.selectTEsbusInfoList(tEsbusInfo);
    }

    /**
     * 新增二手交易管理
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 结果
     */
    @Override
    public int insertTEsbusInfo(TEsbusInfo tEsbusInfo)
    {
        return tEsbusInfoMapper.insertTEsbusInfo(tEsbusInfo);
    }

    /**
     * 修改二手交易管理
     * 
     * @param tEsbusInfo 二手交易管理
     * @return 结果
     */
    @Override
    public int updateTEsbusInfo(TEsbusInfo tEsbusInfo)
    {
        return tEsbusInfoMapper.updateTEsbusInfo(tEsbusInfo);
    }

    /**
     * 删除二手交易管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTEsbusInfoByIds(String ids)
    {
        return tEsbusInfoMapper.deleteTEsbusInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除二手交易管理信息
     * 
     * @param id 二手交易管理ID
     * @return 结果
     */
    public int deleteTEsbusInfoById(Long id)
    {
        return tEsbusInfoMapper.deleteTEsbusInfoById(id);
    }

	@Override
	public List selectBanner(Long id) {
		return tEsbusInfoMapper.selectBanner(id);
	}
	
	@Override
	public List selectBase(Long id) {
		return tEsbusInfoMapper.selectBase(id);
	}
}
