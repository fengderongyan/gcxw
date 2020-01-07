package com.ruoyi.manage.zxcompany.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.zxcompany.domain.ZxCompany;
import java.util.List;

/**
 * 装修公司管理Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-10
 */
public interface ZxCompanyMapper 
{
    /**
     * 查询装修公司管理
     * 
     * @param zxCompanyId 装修公司管理ID
     * @return 装修公司管理
     */
    public ZxCompany selectZxCompanyById(Long zxCompanyId);

    /**
     * 查询装修公司管理列表
     * 
     * @param zxCompany 装修公司管理
     * @return 装修公司管理集合
     */
    public List<ZxCompany> selectZxCompanyList(ZxCompany zxCompany);

    /**
     * 新增装修公司管理
     * 
     * @param zxCompany 装修公司管理
     * @return 结果
     */
    public int insertZxCompany(ZxCompany zxCompany);

    /**
     * 修改装修公司管理
     * 
     * @param zxCompany 装修公司管理
     * @return 结果
     */
    public int updateZxCompany(ZxCompany zxCompany);

    /**
     * 删除装修公司管理
     * 
     * @param zxCompanyId 装修公司管理ID
     * @return 结果
     */
    public int deleteZxCompanyById(Long zxCompanyId);

    /**
     * 批量删除装修公司管理
     * 
     * @param zxCompanyIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxCompanyByIds(String[] zxCompanyIds);

	public int changeIsMain(ZxCompany zxCompany);

	public List<PageData> selectSelectedXqList(Long zxCompanyId);

	public void deleteCompanyDept(PageData pd);

	public void saveXq(PageData pd);

	public int checkXqExists(Long zxCompanyId);
}
