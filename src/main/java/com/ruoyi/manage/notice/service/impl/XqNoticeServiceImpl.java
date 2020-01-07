package com.ruoyi.manage.notice.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.manage.notice.mapper.XqNoticeMapper;
import com.ruoyi.manage.notice.domain.XqNotice;
import com.ruoyi.manage.notice.service.IXqNoticeService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;

/**
 * 小区公告Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-09
 */
@Service
public class XqNoticeServiceImpl implements IXqNoticeService 
{
    @Autowired
    private XqNoticeMapper xqNoticeMapper;

    /**
     * 查询小区公告
     * 
     * @param id 小区公告ID
     * @return 小区公告
     */
    @Override
    public XqNotice selectXqNoticeById(Long id)
    {
        return xqNoticeMapper.selectXqNoticeById(id);
    }

    /**
     * 查询小区公告列表
     * 
     * @param xqNotice 小区公告
     * @return 小区公告
     */
    @Override
    @DataScope(deptAlias = "u")
    public List<XqNotice> selectXqNoticeList(XqNotice xqNotice)
    {
        return xqNoticeMapper.selectXqNoticeList(xqNotice);
    }

    /**
     * 新增小区公告
     * 
     * @param xqNotice 小区公告
     * @return 结果
     */
    @Override
    public int insertXqNotice(XqNotice xqNotice)
    {
        return xqNoticeMapper.insertXqNotice(xqNotice);
    }

    /**
     * 修改小区公告
     * 
     * @param xqNotice 小区公告
     * @return 结果
     */
    @Override
    public int updateXqNotice(XqNotice xqNotice)
    {
        return xqNoticeMapper.updateXqNotice(xqNotice);
    }

    /**
     * 删除小区公告对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteXqNoticeByIds(String ids)
    {
        return xqNoticeMapper.deleteXqNoticeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除小区公告信息
     * 
     * @param id 小区公告ID
     * @return 结果
     */
    public int deleteXqNoticeById(Long id)
    {
        return xqNoticeMapper.deleteXqNoticeById(id);
    }
}
