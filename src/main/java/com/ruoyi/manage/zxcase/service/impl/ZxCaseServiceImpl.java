package com.ruoyi.manage.zxcase.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.zxcase.mapper.ZxCaseMapper;
import com.ruoyi.manage.zxcase.domain.ZxCase;
import com.ruoyi.manage.zxcase.service.IZxCaseService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 装修案例Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-31
 */
@Service
public class ZxCaseServiceImpl implements IZxCaseService 
{
    @Autowired
    private ZxCaseMapper zxCaseMapper;

    /**
     * 查询装修案例
     * 
     * @param caseId 装修案例ID
     * @return 装修案例
     */
    @Override
    public ZxCase selectZxCaseById(Long caseId)
    {
        return zxCaseMapper.selectZxCaseById(caseId);
    }

    /**
     * 查询装修案例列表
     * 
     * @param zxCase 装修案例
     * @return 装修案例
     */
    @Override
    public List<ZxCase> selectZxCaseList(ZxCase zxCase)
    {
        return zxCaseMapper.selectZxCaseList(zxCase);
    }

    /**
     * 新增装修案例
     * 
     * @param zxCase 装修案例
     * @return 结果
     */
    @Override
    public int insertZxCase(ZxCase zxCase)
    {
		Date date = DateUtils.getNowDate();
        zxCase.setCreateTime(date);
        zxCase.setUpdateTime(date);
        return zxCaseMapper.insertZxCase(zxCase);
    }

    /**
     * 修改装修案例
     * 
     * @param zxCase 装修案例
     * @return 结果
     */
    @Override
    public int updateZxCase(ZxCase zxCase)
    {
        zxCase.setUpdateTime(DateUtils.getNowDate());
        return zxCaseMapper.updateZxCase(zxCase);
    }

    /**
     * 删除装修案例对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxCaseByIds(String ids)
    {
        return zxCaseMapper.deleteZxCaseByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修案例信息
     * 
     * @param caseId 装修案例ID
     * @return 结果
     */
    public int deleteZxCaseById(Long caseId)
    {
        return zxCaseMapper.deleteZxCaseById(caseId);
    }
}
