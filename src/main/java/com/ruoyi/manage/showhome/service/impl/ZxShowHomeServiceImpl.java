package com.ruoyi.manage.showhome.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.manage.showhome.mapper.ZxShowHomeMapper;
import com.ruoyi.manage.showhome.domain.ShowHomeImg;
import com.ruoyi.manage.showhome.domain.ZxShowHome;
import com.ruoyi.manage.showhome.service.IZxShowHomeService;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.web.service.BaseService;

/**
 * 装修效果Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-09
 */
@Service
public class ZxShowHomeServiceImpl extends BaseService implements IZxShowHomeService 
{
    @Autowired
    private ZxShowHomeMapper zxShowHomeMapper;

    /**
     * 查询装修效果
     * 
     * @param showHomeId 装修效果ID
     * @return 装修效果
     */
    @Override
    public ZxShowHome selectZxShowHomeById(Long showHomeId)
    {
        return zxShowHomeMapper.selectZxShowHomeById(showHomeId);
    }

    /**
     * 查询装修效果列表
     * 
     * @param zxShowHome 装修效果
     * @return 装修效果
     */
    @Override
    public List<ZxShowHome> selectZxShowHomeList(ZxShowHome zxShowHome)
    {
        return zxShowHomeMapper.selectZxShowHomeList(zxShowHome);
    }

    /**
     * 新增装修效果
     * 
     * @param zxShowHome 装修效果
     * @return 结果
     */
    @Override
    @Transactional
    public int insertZxShowHome(ZxShowHome zxShowHome, String[] imgUrls)
    {
		Date date = DateUtils.getNowDate();
        zxShowHome.setCreateTime(date);
        zxShowHome.setCreateBy(this.getLoginName());
        zxShowHome.setUpdateTime(date);
        zxShowHomeMapper.insertZxShowHome(zxShowHome);
        for (int i = 0; i < imgUrls.length; i++) {
        	ShowHomeImg showHomeImg = new ShowHomeImg();
        	showHomeImg.setShowHomeId(zxShowHome.getShowHomeId());
        	showHomeImg.setImgUrl(imgUrls[i]);
        	zxShowHomeMapper.insertShowHomeImg(showHomeImg);
		}
        return 1;
    }

    /**
     * 修改装修效果
     * 
     * @param zxShowHome 装修效果
     * @return 结果
     */
    @Override
    @Transactional
    public int updateZxShowHome(ZxShowHome zxShowHome, String[] imgUrls)
    {
        zxShowHome.setUpdateTime(DateUtils.getNowDate());
        zxShowHome.setUpdateBy(this.getLoginName());
        zxShowHomeMapper.updateZxShowHome(zxShowHome);
        zxShowHomeMapper.deleteShowHomeImgs(zxShowHome.getShowHomeId());
        for (int i = 0; i < imgUrls.length; i++) {
        	ShowHomeImg showHomeImg = new ShowHomeImg();
        	showHomeImg.setShowHomeId(zxShowHome.getShowHomeId());
        	showHomeImg.setImgUrl(imgUrls[i]);
        	zxShowHomeMapper.insertShowHomeImg(showHomeImg);
		}
        return 1;
    }

    /**
     * 删除装修效果对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZxShowHomeByIds(String ids)
    {
        return zxShowHomeMapper.deleteZxShowHomeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装修效果信息
     * 
     * @param showHomeId 装修效果ID
     * @return 结果
     */
    public int deleteZxShowHomeById(Long showHomeId)
    {
        return zxShowHomeMapper.deleteZxShowHomeById(showHomeId);
    }
}
