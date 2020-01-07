package com.ruoyi.manage.showhome.service;

import com.ruoyi.manage.showhome.domain.ZxShowHome;
import java.util.List;

/**
 * 装修效果Service接口
 * 
 * @author yanbs
 * @date 2019-12-09
 */
public interface IZxShowHomeService 
{
    /**
     * 查询装修效果
     * 
     * @param showHomeId 装修效果ID
     * @return 装修效果
     */
    public ZxShowHome selectZxShowHomeById(Long showHomeId);

    /**
     * 查询装修效果列表
     * 
     * @param zxShowHome 装修效果
     * @return 装修效果集合
     */
    public List<ZxShowHome> selectZxShowHomeList(ZxShowHome zxShowHome);

    /**
     * 新增装修效果
     * 
     * @param zxShowHome 装修效果
     * @return 结果
     */
    public int insertZxShowHome(ZxShowHome zxShowHome, String[] imgUrls);

    /**
     * 修改装修效果
     * 
     * @param zxShowHome 装修效果
     * @return 结果
     */
    public int updateZxShowHome(ZxShowHome zxShowHome, String[] imgUrls);

    /**
     * 批量删除装修效果
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxShowHomeByIds(String ids);

    /**
     * 删除装修效果信息
     * 
     * @param showHomeId 装修效果ID
     * @return 结果
     */
    public int deleteZxShowHomeById(Long showHomeId);
}
