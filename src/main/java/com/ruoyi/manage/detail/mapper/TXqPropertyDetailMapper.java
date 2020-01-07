package com.ruoyi.manage.detail.mapper;

import com.ruoyi.manage.detail.domain.TXqPropertyDetail;
import java.util.List;

/**
 * 物业明细Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-05
 */
public interface TXqPropertyDetailMapper 
{
    /**
     * 查询物业明细
     * 
     * @param id 物业明细ID
     * @return 物业明细
     */
    public TXqPropertyDetail selectTXqPropertyDetailById(Long id);

    /**
     * 查询物业明细列表
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 物业明细集合
     */
    public List<TXqPropertyDetail> selectTXqPropertyDetailList(TXqPropertyDetail tXqPropertyDetail);

    /**
     * 新增物业明细
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 结果
     */
    public int insertTXqPropertyDetail(TXqPropertyDetail tXqPropertyDetail);

    /**
     * 修改物业明细
     * 
     * @param tXqPropertyDetail 物业明细
     * @return 结果
     */
    public int updateTXqPropertyDetail(TXqPropertyDetail tXqPropertyDetail);

    /**
     * 删除物业明细
     * 
     * @param id 物业明细ID
     * @return 结果
     */
    public int deleteTXqPropertyDetailById(Long id);

    /**
     * 批量删除物业明细
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqPropertyDetailByIds(String[] ids);
}
