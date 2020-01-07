package com.ruoyi.manage.showhome.mapper;

import com.ruoyi.manage.showhome.domain.ShowHomeImg;
import com.ruoyi.manage.showhome.domain.ZxShowHome;
import java.util.List;

/**
 * 装修效果Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-09
 */
public interface ZxShowHomeMapper 
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
    public int insertZxShowHome(ZxShowHome zxShowHome);

    /**
     * 修改装修效果
     * 
     * @param zxShowHome 装修效果
     * @return 结果
     */
    public int updateZxShowHome(ZxShowHome zxShowHome);

    /**
     * 删除装修效果
     * 
     * @param showHomeId 装修效果ID
     * @return 结果
     */
    public int deleteZxShowHomeById(Long showHomeId);

    /**
     * 批量删除装修效果
     * 
     * @param showHomeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxShowHomeByIds(String[] showHomeIds);

	public void insertShowHomeImg(ShowHomeImg showHomeImg);

	public void deleteShowHomeImgs(Long showHomeId);
}
