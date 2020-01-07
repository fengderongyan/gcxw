package com.ruoyi.manage.space.service;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.space.domain.TXqParkingSpace;
import java.util.List;

/**
 * 停车费Service接口
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public interface ITXqParkingSpaceService 
{
    /**
     * 查询停车费
     * 
     * @param id 停车费ID
     * @return 停车费
     */
    public TXqParkingSpace selectTXqParkingSpaceById(Long id);
    
    public TXqParkingSpace selectTXqParkingSpaceByIdScore(Long id);

    /**
     * 查询停车费列表
     * 
     * @param tXqParkingSpace 停车费
     * @return 停车费集合
     */
    public List<TXqParkingSpace> selectTXqParkingSpaceList(TXqParkingSpace tXqParkingSpace);

    /**
     * 新增停车费
     * 
     * @param tXqParkingSpace 停车费
     * @return 结果
     */
    public int insertTXqParkingSpace(TXqParkingSpace tXqParkingSpace);

    /**
     * 修改停车费
     * 
     * @param tXqParkingSpace 停车费
     * @return 结果
     */
    public int updateTXqParkingSpace(TXqParkingSpace tXqParkingSpace);

    /**
     * 批量删除停车费
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqParkingSpaceByIds(String ids);

    /**
     * 删除停车费信息
     * 
     * @param id 停车费ID
     * @return 结果
     */
    public int deleteTXqParkingSpaceById(Long id);
    
    public int checkSpace(TXqParkingSpace tXqParkingSpace);
    
    public Long selectDeptIdByFloorId(TXqParkingSpace tXqParkingSpace);
    
    /**
     * 推送停车费信息
     * 
     * @param id 停车费ID
     * @return 结果
     */
    public int pushSpace(Long id);
    
    public PageData getSomeInfo(Long ids);
    
    public int savePush(PageData pd);
}
