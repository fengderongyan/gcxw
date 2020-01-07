package com.ruoyi.manage.wxuser.mapper;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.domain.WxUserFloor;

public interface WxUserMapper {

	public WxUser selectWxUserByOpenid(String openid);

	public WxUserFloor selectBindFloorByOpenid(String openid);

	public void bindDept(WxUser wxUser);

	public Integer selectIsBind(String openid);

	public void updateWxUser(PageData pd);

	public void insertWxUserFloor(PageData pd);

	public Integer selectUserFloorIsExists(PageData pd);

}
