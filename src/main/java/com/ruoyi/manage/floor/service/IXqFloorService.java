package com.ruoyi.manage.floor.service;

import com.ruoyi.manage.floor.domain.XqFloor;
import java.util.List;

/**
 * 楼栋管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public interface IXqFloorService 
{
    /**
     * 查询楼栋管理
     * 
     * @param floorId 楼栋管理ID
     * @return 楼栋管理
     */
    public XqFloor selectXqFloorById(Long floorId);

    /**
     * 查询楼栋管理列表
     * 
     * @param xqFloor 楼栋管理
     * @return 楼栋管理集合
     */
    public List<XqFloor> selectXqFloorList(XqFloor xqFloor);

    /**
     * 新增楼栋管理
     * 
     * @param xqFloor 楼栋管理
     * @return 结果
     */
    public int insertXqFloor(XqFloor xqFloor);

    /**
     * 修改楼栋管理
     * 
     * @param xqFloor 楼栋管理
     * @return 结果
     */
    public int updateXqFloor(XqFloor xqFloor);

    /**
     * 批量删除楼栋管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteXqFloorByIds(String ids);

    /**
     * 删除楼栋管理信息
     * 
     * @param floorId 楼栋管理ID
     * @return 结果
     */
    public int deleteXqFloorById(Long floorId);
    
    /**
     * 校验是否存在
     * 
     * @param floorId 楼栋管理ID
     * @return 结果
     */
    public int checkFloor(XqFloor xqFloor);
}
