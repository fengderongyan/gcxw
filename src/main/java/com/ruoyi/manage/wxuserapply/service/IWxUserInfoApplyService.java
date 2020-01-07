package com.ruoyi.manage.wxuserapply.service;

import java.util.List;

import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuserapply.domain.WxUserInfoApply;

public interface IWxUserInfoApplyService {

	public Integer isHasApplyInfo(WxUser wxUser);

	public List<WxUserInfoApply> selectWxUserInfoApplyList(WxUserInfoApply wxUserInfoApply);

	public int passApply(Long wxuserInfoApplyId);

	public int saveNopass(WxUserInfoApply wxUserInfoApply);

}
