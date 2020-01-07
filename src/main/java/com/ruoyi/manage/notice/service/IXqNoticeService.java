package com.ruoyi.manage.notice.service;

import com.ruoyi.manage.notice.domain.XqNotice;
import java.util.List;

/**
 * 小区公告Service接口
 * 
 * @author yanbs
 * @date 2019-12-09
 */
public interface IXqNoticeService 
{
    /**
     * 查询小区公告
     * 
     * @param id 小区公告ID
     * @return 小区公告
     */
    public XqNotice selectXqNoticeById(Long id);

    /**
     * 查询小区公告列表
     * 
     * @param xqNotice 小区公告
     * @return 小区公告集合
     */
    public List<XqNotice> selectXqNoticeList(XqNotice xqNotice);

    /**
     * 新增小区公告
     * 
     * @param xqNotice 小区公告
     * @return 结果
     */
    public int insertXqNotice(XqNotice xqNotice);

    /**
     * 修改小区公告
     * 
     * @param xqNotice 小区公告
     * @return 结果
     */
    public int updateXqNotice(XqNotice xqNotice);

    /**
     * 批量删除小区公告
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteXqNoticeByIds(String ids);

    /**
     * 删除小区公告信息
     * 
     * @param id 小区公告ID
     * @return 结果
     */
    public int deleteXqNoticeById(Long id);
}
