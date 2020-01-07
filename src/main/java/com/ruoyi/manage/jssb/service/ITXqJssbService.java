package com.ruoyi.manage.jssb.service;

import com.ruoyi.manage.jssb.domain.TXqJssb;
import java.util.List;

/**
 * 急事速办Service接口
 * 
 * @author zhangchengcai
 * @date 2019-12-10
 */
public interface ITXqJssbService 
{
    /**
     * 查询急事速办
     * 
     * @param id 急事速办ID
     * @return 急事速办
     */
    public TXqJssb selectTXqJssbById(Long id);

    /**
     * 查询急事速办列表
     * 
     * @param tXqJssb 急事速办
     * @return 急事速办集合
     */
    public List<TXqJssb> selectTXqJssbList(TXqJssb tXqJssb);

    /**
     * 新增急事速办
     * 
     * @param tXqJssb 急事速办
     * @return 结果
     */
    public int insertTXqJssb(TXqJssb tXqJssb);

    /**
     * 修改急事速办
     * 
     * @param tXqJssb 急事速办
     * @return 结果
     */
    public int updateTXqJssb(TXqJssb tXqJssb);

    /**
     * 批量删除急事速办
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqJssbByIds(String ids);

    /**
     * 删除急事速办信息
     * 
     * @param id 急事速办ID
     * @return 结果
     */
    public int deleteTXqJssbById(Long id);
}
