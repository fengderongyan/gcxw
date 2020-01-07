package com.ruoyi.manage.materialstore.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.materialstore.domain.ZxMaterialStore;
import java.util.List;

/**
 * 建材商管理Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public interface ZxMaterialStoreMapper 
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
     * 删除建材商管理
     * 
     * @param materialStoreId 建材商管理ID
     * @return 结果
     */
    public int deleteZxMaterialStoreById(Long materialStoreId);

    /**
     * 批量删除建材商管理
     * 
     * @param materialStoreIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxMaterialStoreByIds(String[] materialStoreIds);

	public List<PageData> selectSelectedXqList(Long materialStoreId);

	public void deleteStoreDept(PageData pd);

	public void saveXq(PageData pd);
}
