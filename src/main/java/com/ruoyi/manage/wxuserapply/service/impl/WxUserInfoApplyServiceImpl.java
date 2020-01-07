package com.ruoyi.manage.wxuserapply.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.weixin.WeixinUtils;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;
import com.ruoyi.framework.web.service.BaseService;
import com.ruoyi.manage.wxuser.domain.WxUser;
import com.ruoyi.manage.wxuser.mapper.WxUserMapper;
import com.ruoyi.manage.wxuserapply.domain.WxUserApplyTemplate;
import com.ruoyi.manage.wxuserapply.domain.WxUserInfoApply;
import com.ruoyi.manage.wxuserapply.mapper.WxUserInfoApplyMapper;
import com.ruoyi.manage.wxuserapply.service.IWxUserInfoApplyService;

import net.sf.json.JSONObject;

@Service
public class WxUserInfoApplyServiceImpl extends BaseService implements IWxUserInfoApplyService{

	@Autowired
	private WxUserInfoApplyMapper wxUserInfoApplyMapper;
	@Autowired
	private WxUserMapper wxUserMapper;
	
	@Override
	public Integer isHasApplyInfo(WxUser wxUser) {
		// TODO Auto-generated method stub
		return wxUserInfoApplyMapper.isHasApplyInfo(wxUser);
	}
	@Override
	@DataScope(deptAlias = "b")
	public List<WxUserInfoApply> selectWxUserInfoApplyList(WxUserInfoApply wxUserInfoApply) {
		// TODO Auto-generated method stub
		return wxUserInfoApplyMapper.selectWxUserInfoApplyList(wxUserInfoApply);
	}
	@Override
	@Transactional
	public int passApply(Long wxuserInfoApplyId) {
		PageData pd = new PageData();
		Date nowDate = DateUtils.getNowDate();
		WxUserInfoApply wxUserInfoApply = wxUserInfoApplyMapper.selectWxUserInfoApplyById(wxuserInfoApplyId);
		pd.put("openid", wxUserInfoApply.getOpenid());
		pd.put("name", wxUserInfoApply.getName());
		pd.put("phone", wxUserInfoApply.getPhone());
		pd.put("birthday", wxUserInfoApply.getBirthday());
		pd.put("updateTime", nowDate);
		wxUserMapper.updateWxUser(pd);
		pd.put("deptId", wxUserInfoApply.getDeptId());
		pd.put("isBind", wxUserInfoApply.getIsAdddept() == 0L ? "1":"0");
		pd.put("buildNum", wxUserInfoApply.getBuildNum());
		pd.put("unitNum", wxUserInfoApply.getUnitNum());
		pd.put("doorNum", wxUserInfoApply.getDoorNum());
		pd.put("createTime", nowDate);
		wxUserMapper.insertWxUserFloor(pd);
		wxUserInfoApplyMapper.passApply(wxuserInfoApplyId);
		
		WxUserApplyTemplate wt = new WxUserApplyTemplate();
		wt.setFirst("您好，您的小区完善信息审核已通过");
		wt.setKeyword1("已通过");
		wt.setKeyword2(DateUtils.parseDateToStr("yyyy-MM-dd HH:mm:ss", nowDate));
		sendWeappTemplateMsg(wxUserInfoApply.getOpenid(), wt.getGetApplyData());
		return 1;
	}
	@Override
	public int saveNopass(WxUserInfoApply wxUserInfoApply) {
		wxUserInfoApplyMapper.saveNopass(wxUserInfoApply);
		WxUserInfoApply res = wxUserInfoApplyMapper.selectWxUserInfoApplyById(wxUserInfoApply.getWxuserInfoApplyId());
		String openid = res.getOpenid();
		WxUserApplyTemplate wt = new WxUserApplyTemplate();
		wt.setFirst("您好，您的小区完善信息已被驳回");
		wt.setKeyword1(res.getRemark());
		wt.setKeyword2(DateUtils.parseDateToStr("yyyy-MM-dd HH:mm:ss", res.getUpdateTime()));
		wt.setRemark("请完善后重新提交审核");
		sendWeappTemplateMsg(openid, wt.getGetApplyData());
		return 1;
	}
	
	public void sendWeappTemplateMsg(String openId, Map data){
		try {
			String SEND_TEMPLATE_MSG = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN";
			Map map = new HashMap();
			map.put("touser", openId);//接收者openid
			map.put("template_id", "tfctSd_q9JIy2Q51xIYudCJ6kkR1rAFPE2-qTtVt1uc");//模板id
			map.put("url", "https://gcxw.altmoose.com/mobile/weixin/index");//跳转路径
			map.put("data", data);//参数
			String access_token = WeixinUtils.getAccess_token();
			String requestUrl = SEND_TEMPLATE_MSG.replace("ACCESS_TOKEN", access_token);
			JSONObject json =  JSONObject.fromObject(map);
			String jsonStr = json.toString();
			JSONObject jsonObject = WeixinUtils.httpRequst(requestUrl, "POST", jsonStr);
			System.out.println("jsonObject : " + jsonObject);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
