package com.ruoyi.manage.wxuser.service;

import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.domain.WxUserFloor;

public interface IWxUserService {

	public WxUser selectWxUserByOpenid(String openid);

	public WxUserFloor selectBindFloorByOpenid(String openid);

}
