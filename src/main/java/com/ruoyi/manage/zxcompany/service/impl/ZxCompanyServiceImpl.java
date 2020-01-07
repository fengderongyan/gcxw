package com.ruoyi.manage.zxcompany.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.manage.zxcompany.mapper.ZxCompanyMapper;
import com.ruoyi.manage.zxcompany.domain.ZxCompany;
import com.ruoyi.manage.zxcompany.service.IZxCompanyService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 装修公司管理Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-10
 */
@Service
public class ZxCompanyServiceImpl implements IZxCompanyService 
{
    @Autowired
    private ZxCompanyMapper zxCompanyMapper;
    @Autowired
    private IDeptService deptService;

    /**
     * 查询装修公司管理
     * 
     * @param zxCompanyId 装修公司管理ID
     * @return 装修公司管理
     */
    @Override
    public ZxCompany selectZxCompanyById(Long zxCompanyId)
    {
        return zxCompanyMapper.selectZxCompanyById(zxCompanyId);
    }

    /**
     * 查询装修公司管理列表
     * 
     * @param zxCompany 装修公司管理
     * @return 装修公司管理
     */
    @Override
    public List<ZxCompany> selectZxCompanyList(ZxCompany zxCompany)
    {
        return zxCompanyMapper.selectZxCompanyList(zxCompany);
    }

    /**
     * 新增装修公司管理
     * 
     * @param zxCompany 装修公司管理
     * @return 结果
     */
    @Override
    public int insertZxCompany(ZxCompany zxCompany)
    {
		Date date = DateUtils.getNowDate();
        zxCompany.setCreateTime(date);
        zxCompany.setUpdateTime(date);
        return zxCompanyMapper.insertZxCompany(zxCompany);
    }

    /**
     * 修改装修公司管理
     * 
     * @param zxCompany 装修公司管理
     * @return 结果
     */
    @Override
    public int updateZxCompany(ZxCompany zxCompany)
    {
        zxCompany.setUpdateTime(DateUtils.getNowDate());
        return zxCompanyMapper.updateZxCompany(zxCompany);
    }

    /**
     * 删除装修公司管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxCompanyByIds(String ids)
    {
        return zxCompanyMapper.deleteZxCompanyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修公司管理信息
     * 
     * @param zxCompanyId 装修公司管理ID
     * @return 结果
     */
    public int deleteZxCompanyById(Long zxCompanyId)
    {
        return zxCompanyMapper.deleteZxCompanyById(zxCompanyId);
    }

	@Override
	public int changeIsMain(ZxCompany zxCompany) {
		// TODO Auto-generated method stub
		return zxCompanyMapper.changeIsMain(zxCompany);
	}

	@Override
	@Transactional
	public List<PageData> selectXqList(Long zxCompanyId, List<Dept> xqList) {
		List<PageData> selectedXqList = zxCompanyMapper.selectSelectedXqList(zxCompanyId);
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
	@Transactional
	public int saveXq(Long zxCompanyId, Long[] deptIds) {
		if(deptIds != null && deptIds.length > 0){
			List<Dept> xqList = deptService.selectXqList(new Dept());
			PageData pd = new PageData();
			pd.put("xqList", xqList);
			pd.put("zxCompanyId", zxCompanyId);
			//只能删除自己所属权限下的小区
			zxCompanyMapper.deleteCompanyDept(pd);
			
			pd.put("deptIds", deptIds);
			zxCompanyMapper.saveXq(pd);
			
		}
		return 1;
	}

	@Override
	public int checkXqExists(Long zxCompanyId) {
		return zxCompanyMapper.checkXqExists(zxCompanyId);
	}
}
