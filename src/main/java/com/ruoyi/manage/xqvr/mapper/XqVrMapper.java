package com.ruoyi.manage.xqvr.mapper;

import com.ruoyi.manage.xqvr.domain.XqVr;
import java.util.List;

/**
 * 小区全景配置Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-04
 */
public interface XqVrMapper 
{
    /**
     * 查询小区全景配置
     * 
     * @param xqVrId 小区全景配置ID
     * @return 小区全景配置
     */
    public XqVr selectXqVrById(Long xqVrId);

    /**
     * 查询小区全景配置列表
     * 
     * @param xqVr 小区全景配置
     * @return 小区全景配置集合
     */
    public List<XqVr> selectXqVrList(XqVr xqVr);

    /**
     * 新增小区全景配置
     * 
     * @param xqVr 小区全景配置
     * @return 结果
     */
    public int insertXqVr(XqVr xqVr);

    /**
     * 修改小区全景配置
     * 
     * @param xqVr 小区全景配置
     * @return 结果
     */
    public int updateXqVr(XqVr xqVr);

    /**
     * 删除小区全景配置
     * 
     * @param xqVrId 小区全景配置ID
     * @return 结果
     */
    public int deleteXqVrById(Long xqVrId);

    /**
     * 批量删除小区全景配置
     * 
     * @param xqVrIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteXqVrByIds(String[] xqVrIds);

	public Integer checkDeptExists(XqVr xqVr);
}
