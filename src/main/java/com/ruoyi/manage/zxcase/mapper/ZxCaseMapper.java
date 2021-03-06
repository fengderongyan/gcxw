package com.ruoyi.manage.zxcase.mapper;

import com.ruoyi.manage.zxcase.domain.ZxCase;
import java.util.List;

/**
 * 装修案例Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-31
 */
public interface ZxCaseMapper 
{
    /**
     * 查询装修案例
     * 
     * @param caseId 装修案例ID
     * @return 装修案例
     */
    public ZxCase selectZxCaseById(Long caseId);

    /**
     * 查询装修案例列表
     * 
     * @param zxCase 装修案例
     * @return 装修案例集合
     */
    public List<ZxCase> selectZxCaseList(ZxCase zxCase);

    /**
     * 新增装修案例
     * 
     * @param zxCase 装修案例
     * @return 结果
     */
    public int insertZxCase(ZxCase zxCase);

    /**
     * 修改装修案例
     * 
     * @param zxCase 装修案例
     * @return 结果
     */
    public int updateZxCase(ZxCase zxCase);

    /**
     * 删除装修案例
     * 
     * @param caseId 装修案例ID
     * @return 结果
     */
    public int deleteZxCaseById(Long caseId);

    /**
     * 批量删除装修案例
     * 
     * @param caseIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteZxCaseByIds(String[] caseIds);
}
