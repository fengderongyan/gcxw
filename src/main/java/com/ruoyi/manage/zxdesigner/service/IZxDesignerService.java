package com.ruoyi.manage.zxdesigner.service;

import com.ruoyi.manage.zxdesigner.domain.ZxDesigner;
import java.util.List;

/**
 * 设计师管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public interface IZxDesignerService 
{
    /**
     * 查询设计师管理
     * 
     * @param designerId 设计师管理ID
     * @return 设计师管理
     */
    public ZxDesigner selectZxDesignerById(Long designerId);

    /**
     * 查询设计师管理列表
     * 
     * @param zxDesigner 设计师管理
     * @return 设计师管理集合
     */
    public List<ZxDesigner> selectZxDesignerList(ZxDesigner zxDesigner);

    /**
     * 新增设计师管理
     * 
     * @param zxDesigner 设计师管理
     * @return 结果
     */
    public int insertZxDesigner(ZxDesigner zxDesigner);

    /**
     * 修改设计师管理
     * 
     * @param zxDesigner 设计师管理
     * @return 结果
     */
    public int updateZxDesigner(ZxDesigner zxDesigner);

    /**
     * 批量删除设计师管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxDesignerByIds(String ids);

    /**
     * 删除设计师管理信息
     * 
     * @param designerId 设计师管理ID
     * @return 结果
     */
    public int deleteZxDesignerById(Long designerId);

	public int changeStatus(ZxDesigner zxDesigner);
}
