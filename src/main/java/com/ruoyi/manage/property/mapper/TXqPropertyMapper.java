package com.ruoyi.manage.property.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.property.domain.TXqProperty;
import java.util.List;

/**
 * 物业费Mapper接口
 * 
 * @author zhangchengcai
 * @date 2019-12-05
 */
public interface TXqPropertyMapper 
{
    /**
     * 查询物业费
     * 
     * @param id 物业费ID
     * @return 物业费
     */
    public TXqProperty selectTXqPropertyById(Long id);
    
    public TXqProperty selectTXqPropertyByIdScore(Long id);

    /**
     * 查询物业费列表
     * 
     * @param tXqProperty 物业费
     * @return 物业费集合
     */
    public List<TXqProperty> selectTXqPropertyList(TXqProperty tXqProperty);

    /**
     * 新增物业费
     * 
     * @param tXqProperty 物业费
     * @return 结果
     */
    public int insertTXqProperty(TXqProperty tXqProperty);

    /**
     * 修改物业费
     * 
     * @param tXqProperty 物业费
     * @return 结果
     */
    public int updateTXqProperty(TXqProperty tXqProperty);

    /**
     * 删除物业费
     * 
     * @param id 物业费ID
     * @return 结果
     */
    public int deleteTXqPropertyById(Long id);

    /**
     * 批量删除物业费
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTXqPropertyByIds(String[] ids);
    
    /**
     * @descripton 推送物业信息
     * @param @param id
     * @param @return
     * @return int  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月9日 下午2:12:44
     */
    public int PushTXqPropertyById(Long id);
    
    /**
     * @descripton 获取对应的楼栋相关信息
     * @param @param id
     * @param @return
     * @return PageData  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月17日 下午4:42:42
     */
    public PageData getSomeInfo(Long id);
    
    public int savePush(PageData pd);
}
