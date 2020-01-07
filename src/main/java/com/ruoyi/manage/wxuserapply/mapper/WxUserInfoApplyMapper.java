package com.ruoyi.manage.wxuserapply.mapper;

import java.util.List;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuserapply.domain.WxUserInfoApply;

public interface WxUserInfoApplyMapper {

	public Integer isHasApplyInfo(WxUser wxUser);

	public void insertWxUserApply(PageData pd);

	public List<WxUserInfoApply> selectWxUserInfoApplyList(WxUserInfoApply wxUserInfoApply);

	public int passApply(Long wxuserInfoApplyId);

	public WxUserInfoApply selectWxUserInfoApplyById(Long wxuserInfoApplyId);

	public void saveNopass(WxUserInfoApply wxUserInfoApply);

}
