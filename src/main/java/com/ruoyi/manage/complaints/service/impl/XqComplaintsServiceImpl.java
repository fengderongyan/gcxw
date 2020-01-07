package com.ruoyi.manage.complaints.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.complaints.mapper.XqComplaintsMapper;
import com.ruoyi.manage.complaints.domain.XqComplaints;
import com.ruoyi.manage.complaints.service.IXqComplaintsService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 投诉/建议管理Service业务层处理
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
@Service
public class XqComplaintsServiceImpl implements IXqComplaintsService 
{
    @Autowired
    private XqComplaintsMapper xqComplaintsMapper;

    /**
     * 查询投诉/建议管理
     * 
     * @param id 投诉/建议管理ID
     * @return 投诉/建议管理
     */
    @Override
    public XqComplaints selectXqComplaintsById(Long id)
    {
        return xqComplaintsMapper.selectXqComplaintsById(id);
    }

    /**
     * 查询投诉/建议管理列表
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 投诉/建议管理
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<XqComplaints> selectXqComplaintsList(XqComplaints xqComplaints)
    {
        return xqComplaintsMapper.selectXqComplaintsList(xqComplaints);
    }

    /**
     * 新增投诉/建议管理
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 结果
     */
    @Override
    public int insertXqComplaints(XqComplaints xqComplaints)
    {
        return xqComplaintsMapper.insertXqComplaints(xqComplaints);
    }

    /**
     * 修改投诉/建议管理
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 结果
     */
    @Override
    public int updateXqComplaints(XqComplaints xqComplaints)
    {
        return xqComplaintsMapper.updateXqComplaints(xqComplaints);
    }

    /**
     * 删除投诉/建议管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteXqComplaintsByIds(String ids)
    {
        return xqComplaintsMapper.deleteXqComplaintsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除投诉/建议管理信息
     * 
     * @param id 投诉/建议管理ID
     * @return 结果
     */
    public int deleteXqComplaintsById(Long id)
    {
        return xqComplaintsMapper.deleteXqComplaintsById(id);
    }
}
