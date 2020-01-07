package com.ruoyi.manage.xqvr.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.xqvr.mapper.XqVrMapper;
import com.ruoyi.manage.xqvr.domain.XqVr;
import com.ruoyi.manage.xqvr.service.IXqVrService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 小区全景配置Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-04
 */
@Service
public class XqVrServiceImpl implements IXqVrService 
{
    @Autowired
    private XqVrMapper xqVrMapper;

    /**
     * 查询小区全景配置
     * 
     * @param xqVrId 小区全景配置ID
     * @return 小区全景配置
     */
    @Override
    public XqVr selectXqVrById(Long xqVrId)
    {
        return xqVrMapper.selectXqVrById(xqVrId);
    }

    /**
     * 查询小区全景配置列表
     * 
     * @param xqVr 小区全景配置
     * @return 小区全景配置
     */
    @Override
    public List<XqVr> selectXqVrList(XqVr xqVr)
    {
        return xqVrMapper.selectXqVrList(xqVr);
    }

    /**
     * 新增小区全景配置
     * 
     * @param xqVr 小区全景配置
     * @return 结果
     */
    @Override
    public int insertXqVr(XqVr xqVr)
    {
		Date date = DateUtils.getNowDate();
        xqVr.setCreateTime(date);
        xqVr.setUpdateTime(date);
        return xqVrMapper.insertXqVr(xqVr);
    }

    /**
     * 修改小区全景配置
     * 
     * @param xqVr 小区全景配置
     * @return 结果
     */
    @Override
    public int updateXqVr(XqVr xqVr)
    {
        xqVr.setUpdateTime(DateUtils.getNowDate());
        return xqVrMapper.updateXqVr(xqVr);
    }

    /**
     * 删除小区全景配置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteXqVrByIds(String ids)
    {
        return xqVrMapper.deleteXqVrByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除小区全景配置信息
     * 
     * @param xqVrId 小区全景配置ID
     * @return 结果
     */
    public int deleteXqVrById(Long xqVrId)
    {
        return xqVrMapper.deleteXqVrById(xqVrId);
    }

	@Override
	public Integer checkDeptExists(XqVr xqVr) {
		return xqVrMapper.checkDeptExists(xqVr);
	}
}
