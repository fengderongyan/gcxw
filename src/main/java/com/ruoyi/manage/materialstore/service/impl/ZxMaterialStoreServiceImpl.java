package com.ruoyi.manage.materialstore.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.materialstore.mapper.ZxMaterialStoreMapper;
import com.ruoyi.manage.materialstore.domain.ZxMaterialStore;
import com.ruoyi.manage.materialstore.service.IZxMaterialStoreService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 建材商管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-19
 */
@Service
public class ZxMaterialStoreServiceImpl implements IZxMaterialStoreService 
{
    @Autowired
    private ZxMaterialStoreMapper zxMaterialStoreMapper;
    @Autowired
    private IDeptService deptService;

    /**
     * 查询建材商管理
     * 
     * @param materialStoreId 建材商管理ID
     * @return 建材商管理
     */
    @Override
    public ZxMaterialStore selectZxMaterialStoreById(Long materialStoreId)
    {
        return zxMaterialStoreMapper.selectZxMaterialStoreById(materialStoreId);
    }

    /**
     * 查询建材商管理列表
     * 
     * @param zxMaterialStore 建材商管理
     * @return 建材商管理
     */
    @Override
    public List<ZxMaterialStore> selectZxMaterialStoreList(ZxMaterialStore zxMaterialStore)
    {
        return zxMaterialStoreMapper.selectZxMaterialStoreList(zxMaterialStore);
    }

    /**
     * 新增建材商管理
     * 
     * @param zxMaterialStore 建材商管理
     * @return 结果
     */
    @Override
    public int insertZxMaterialStore(ZxMaterialStore zxMaterialStore)
    {
		Date date = DateUtils.getNowDate();
        zxMaterialStore.setCreateTime(date);
        zxMaterialStore.setUpdateTime(date);
        return zxMaterialStoreMapper.insertZxMaterialStore(zxMaterialStore);
    }

    /**
     * 修改建材商管理
     * 
     * @param zxMaterialStore 建材商管理
     * @return 结果
     */
    @Override
    public int updateZxMaterialStore(ZxMaterialStore zxMaterialStore)
    {
        zxMaterialStore.setUpdateTime(DateUtils.getNowDate());
        return zxMaterialStoreMapper.updateZxMaterialStore(zxMaterialStore);
    }

    /**
     * 删除建材商管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxMaterialStoreByIds(String ids)
    {
        return zxMaterialStoreMapper.deleteZxMaterialStoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除建材商管理信息
     * 
     * @param materialStoreId 建材商管理ID
     * @return 结果
     */
    public int deleteZxMaterialStoreById(Long materialStoreId)
    {
        return zxMaterialStoreMapper.deleteZxMaterialStoreById(materialStoreId);
    }

	@Override
	public List<PageData> selectXqList(Long materialStoreId, List<Dept> xqList) {
		List<PageData> selectedXqList = zxMaterialStoreMapper.selectSelectedXqList(materialStoreId);
		List<PageData> xqListWithSelect = new ArrayList<PageData>();
		if(xqList != null && xqList.size() > 0){
			for (Dept dept : xqList) {
				PageData tmp = new PageData();
				tmp.put("deptId", dept.getDeptId());
				tmp.put("deptName", dept.getDeptName());
				tmp.put("flag", "false");
				String deptId = dept.getDeptId().toString();
				if(selectedXqList != null && selectedXqList.size() > 0){
					for (PageData pageData : selectedXqList) {
						String selectDeptId = pageData.getString("deptId");
						if(selectDeptId.equals(deptId)){
							tmp.put("flag", "true");
							break;
						}
					}
				}
				
				xqListWithSelect.add(tmp);
				
			}
			
		}
		return xqListWithSelect;
	}

	@Override
	public int saveXq(Long materialStoreId, Long[] deptIds) {
		if(deptIds != null && deptIds.length > 0){
			List<Dept> xqList = deptService.selectXqList(new Dept());
			PageData pd = new PageData();
			pd.put("xqList", xqList);
			pd.put("materialStoreId", materialStoreId);
			//只能删除自己所属权限下的小区
			zxMaterialStoreMapper.deleteStoreDept(pd);
			
			pd.put("deptIds", deptIds);
			zxMaterialStoreMapper.saveXq(pd);
			
		}
		return 1;
	}
}
