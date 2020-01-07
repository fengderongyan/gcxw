package com.ruoyi.mobile.weixin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.framework.web.service.BaseService;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.mapper.WxUserMapper;
import com.ruoyi.manage.wxuserapply.mapper.WxUserInfoApplyMapper;

@Service
public class WxLoginService extends BaseService{
	
	@Autowired
	private WxUserMapper wxUserMapper;
	@Autowired
	private WxUserInfoApplyMapper wxUserInfoApplyMapper;

	public void bindDept(String openid, Long nowDeptId) {
		WxUser wxUser = new WxUser();
		wxUser.setOpenid(openid);
		wxUser.setNowDeptId(nowDeptId);
		wxUser.setCreateTime(DateUtils.getNowDate());
		wxUserMapper.bindDept(wxUser);
	}

	public Integer selectIsBind(String openid) {
		// TODO Auto-generated method stub
		return wxUserMapper.selectIsBind(openid);
	}

	public void finishBaseInfo(PageData pd) {
		/*pd.put("openid", this.getOpenid());
		pd.put("birthday", DateUtils.dateTime("yyyy-MM-dd", pd.getString("birthday")));
		pd.put("updateTime", DateUtils.getNowDate());
		wxUserMapper.updateWxUser(pd);
		pd.put("createTime", DateUtils.getNowDate());
		wxUserMapper.insertWxUserFloor(pd);*/
		pd.put("createTime", DateUtils.getNowDate());
		wxUserInfoApplyMapper.insertWxUserApply(pd);
	}

	public Integer selectUserFloorIsExists(PageData pd) {
		// TODO Auto-generated method stub
		return wxUserMapper.selectUserFloorIsExists(pd);
	}

}
