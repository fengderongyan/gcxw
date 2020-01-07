package com.ruoyi.manage.zxmaterial.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.manage.zxmaterial.mapper.ZxMaterialMapper;
import com.ruoyi.manage.zxmaterial.domain.ZxMaterial;
import com.ruoyi.manage.zxmaterial.domain.ZxMaterialImg;
import com.ruoyi.manage.zxmaterial.service.IZxMaterialService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 建材商品管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Service
public class ZxMaterialServiceImpl implements IZxMaterialService 
{
    @Autowired
    private ZxMaterialMapper zxMaterialMapper;

    /**
     * 查询建材商品管理
     * 
     * @param materialId 建材商品管理ID
     * @return 建材商品管理
     */
    @Override
    public ZxMaterial selectZxMaterialById(Long materialId)
    {
        return zxMaterialMapper.selectZxMaterialById(materialId);
    }

    /**
     * 查询建材商品管理列表
     * 
     * @param zxMaterial 建材商品管理
     * @return 建材商品管理
     */
    @Override
    public List<ZxMaterial> selectZxMaterialList(ZxMaterial zxMaterial)
    {
        return zxMaterialMapper.selectZxMaterialList(zxMaterial);
    }

    /**
     * 新增建材商品管理
     * 
     * @param zxMaterial 建材商品管理
     * @return 结果
     */
    @Override
    @Transactional
    public int insertZxMaterial(ZxMaterial zxMaterial, String[] detailImgUrls)
    {
		Date date = DateUtils.getNowDate();
        zxMaterial.setCreateTime(date);
        zxMaterial.setUpdateTime(date);
        zxMaterialMapper.insertZxMaterial(zxMaterial);
        if(detailImgUrls != null){
        	for (int i = 0; i < detailImgUrls.length; i++) {
        		ZxMaterialImg zxMaterialImg = new ZxMaterialImg();
        		zxMaterialImg.setMaterialId(zxMaterial.getMaterialId());
        		zxMaterialImg.setDetailImgUrl(detailImgUrls[i]);
        		zxMaterialMapper.insertZxMaterialImgs(zxMaterialImg);
			}
        }
        return 1;
    }

    /**
     * 修改建材商品管理
     * 
     * @param zxMaterial 建材商品管理
     * @return 结果
     */
    @Override
    public int updateZxMaterial(ZxMaterial zxMaterial, String[] detailImgUrls)
    {
        zxMaterial.setUpdateTime(DateUtils.getNowDate());
        zxMaterialMapper.updateZxMaterial(zxMaterial);
        if(detailImgUrls != null){
        	zxMaterialMapper.deleteZxMaterialImgs(zxMaterial.getMaterialId());
        	for (int i = 0; i < detailImgUrls.length; i++) {
        		ZxMaterialImg zxMaterialImg = new ZxMaterialImg();
        		zxMaterialImg.setMaterialId(zxMaterial.getMaterialId());
        		zxMaterialImg.setDetailImgUrl(detailImgUrls[i]);
        		zxMaterialMapper.insertZxMaterialImgs(zxMaterialImg);
			}
        }
        return 1;
    }

    /**
     * 删除建材商品管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxMaterialByIds(String ids)
    {
        return zxMaterialMapper.deleteZxMaterialByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除建材商品管理信息
     * 
     * @param materialId 建材商品管理ID
     * @return 结果
     */
    public int deleteZxMaterialById(Long materialId)
    {
        return zxMaterialMapper.deleteZxMaterialById(materialId);
    }

	@Override
	public int changeStatus(ZxMaterial zxMaterial) {
		// TODO Auto-generated method stub
		return zxMaterialMapper.changeStatus(zxMaterial);
	}
}
