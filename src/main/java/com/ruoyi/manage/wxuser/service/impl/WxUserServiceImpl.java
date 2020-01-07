package com.ruoyi.manage.wxuser.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.framework.web.service.BaseService;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.domain.WxUserFloor;
import com.ruoyi.manage.wxuser.mapper.WxUserMapper;
import com.ruoyi.manage.wxuser.service.IWxUserService;

@Service
public class WxUserServiceImpl extends BaseService implements IWxUserService{
	@Autowired
	private WxUserMapper wxUserMapper;

	@Override
	public WxUser selectWxUserByOpenid(String openid) {
		// TODO Auto-generated method stub
		return wxUserMapper.selectWxUserByOpenid(openid);
	}

	@Override
	public WxUserFloor selectBindFloorByOpenid(String openid) {
		// TODO Auto-generated method stub
		return wxUserMapper.selectBindFloorByOpenid(openid);
	}

}
