package com.ruoyi.manage.zxmaterial.service;

import com.ruoyi.manage.zxmaterial.domain.ZxMaterial;
import java.util.List;

/**
 * 建材商品管理Service接口
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public interface IZxMaterialService 
{
    /**
     * 查询建材商品管理
     * 
     * @param materialId 建材商品管理ID
     * @return 建材商品管理
     */
    public ZxMaterial selectZxMaterialById(Long materialId);

    /**
     * 查询建材商品管理列表
     * 
     * @param zxMaterial 建材商品管理
     * @return 建材商品管理集合
     */
    public List<ZxMaterial> selectZxMaterialList(ZxMaterial zxMaterial);

    /**
     * 新增建材商品管理
     * 
     * @param zxMaterial 建材商品管理
     * @return 结果
     */
    public int insertZxMaterial(ZxMaterial zxMaterial, String[] detailImgUrls);

    /**
     * 修改建材商品管理
     * 
     * @param zxMaterial 建材商品管理
     * @return 结果
     */
    public int updateZxMaterial(ZxMaterial zxMaterial, String[] detailImgUrls);

    /**
     * 批量删除建材商品管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxMaterialByIds(String ids);

    /**
     * 删除建材商品管理信息
     * 
     * @param materialId 建材商品管理ID
     * @return 结果
     */
    public int deleteZxMaterialById(Long materialId);

	public int changeStatus(ZxMaterial zxMaterial);
}
