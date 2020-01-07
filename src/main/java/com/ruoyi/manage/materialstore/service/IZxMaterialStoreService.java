package com.ruoyi.manage.materialstore.service;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.materialstore.domain.ZxMaterialStore;
import com.ruoyi.project.system.dept.domain.Dept;

import java.util.List;

/**
 * 建材商管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public interface IZxMaterialStoreService 
{
    /**
     * 查询建材商管理
     * 
     * @param materialStoreId 建材商管理ID
     * @return 建材商管理
     */
    public ZxMaterialStore selectZxMaterialStoreById(Long materialStoreId);

    /**
     * 查询建材商管理列表
     * 
     * @param zxMaterialStore 建材商管理
     * @return 建材商管理集合
     */
    public List<ZxMaterialStore> selectZxMaterialStoreList(ZxMaterialStore zxMaterialStore);

    /**
     * 新增建材商管理
     * 
     * @param zxMaterialStore 建材商管理
     * @return 结果
     */
    public int insertZxMaterialStore(ZxMaterialStore zxMaterialStore);

    /**
     * 修改建材商管理
     * 
     * @param zxMaterialStore 建材商管理
     * @return 结果
     */
    public int updateZxMaterialStore(ZxMaterialStore zxMaterialStore);

    /**
     * 批量删除建材商管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxMaterialStoreByIds(String ids);

    /**
     * 删除建材商管理信息
     * 
     * @param materialStoreId 建材商管理ID
     * @return 结果
     */
    public int deleteZxMaterialStoreById(Long materialStoreId);

	public List<PageData> selectXqList(Long materialStoreId, List<Dept> xqList);

	public int saveXq(Long materialStoreId, Long[] deptIds);
}
