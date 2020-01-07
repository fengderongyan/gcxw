package com.ruoyi.manage.complaints.service;

import com.ruoyi.manage.complaints.domain.XqComplaints;
import java.util.List;

/**
 * 投诉/建议管理Service接口
 * 
 * @author zhangchengcai
 * @date 2019-12-18
 */
public interface IXqComplaintsService 
{
    /**
     * 查询投诉/建议管理
     * 
     * @param id 投诉/建议管理ID
     * @return 投诉/建议管理
     */
    public XqComplaints selectXqComplaintsById(Long id);

    /**
     * 查询投诉/建议管理列表
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 投诉/建议管理集合
     */
    public List<XqComplaints> selectXqComplaintsList(XqComplaints xqComplaints);

    /**
     * 新增投诉/建议管理
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 结果
     */
    public int insertXqComplaints(XqComplaints xqComplaints);

    /**
     * 修改投诉/建议管理
     * 
     * @param xqComplaints 投诉/建议管理
     * @return 结果
     */
    public int updateXqComplaints(XqComplaints xqComplaints);

    /**
     * 批量删除投诉/建议管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteXqComplaintsByIds(String ids);

    /**
     * 删除投诉/建议管理信息
     * 
     * @param id 投诉/建议管理ID
     * @return 结果
     */
    public int deleteXqComplaintsById(Long id);
}
