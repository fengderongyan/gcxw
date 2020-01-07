package com.ruoyi.common.utils.weixin.entity;

import java.util.HashMap;
import java.util.Map;

public class TemplateMsg {
	
	private String first;//标题
	private String keyword1;// 
	private String keyword2;// 
	private String keyword3;// 
	private String keyword4;// 
	private String remark;//备注
	
	private Map getApplyData;
	
	/**
	 * 描述：获取模板消息中的data
	 * @return
	 * @see weixin.entity.ApplyMsg#getGetApplyData()
	 * @author zhangyongbin
	 */
	public Map getGetApplyData() {
		Map firstMap = new HashMap();
		Map dataMap = new HashMap();
		System.out.println("first:" + first);
		firstMap.put("value", first);
		firstMap.put("color", "#173177");
		dataMap.put("first", firstMap);

		Map keyword1Map = new HashMap();
		keyword1Map.put("value", keyword1);
		keyword1Map.put("color", "#173177");
		dataMap.put("keyword1", keyword1Map);

		Map keyword2Map = new HashMap();
		keyword2Map.put("value", keyword2);
		keyword2Map.put("color", "#173177");
		dataMap.put("keyword2", keyword2Map);
		
		Map keyword3Map = new HashMap();
		keyword3Map.put("value", keyword3);
		keyword3Map.put("color", "#173177");
		dataMap.put("keyword3", keyword3Map);
		
		Map keyword4Map = new HashMap();
		keyword4Map.put("value", keyword4);
		keyword4Map.put("color", "#173177");
		dataMap.put("keyword4", keyword4Map);


		
		Map remarkMap = new HashMap();
		remarkMap.put("value", remark);
		remarkMap.put("color", "#173177");
		dataMap.put("remark", remarkMap);
		return dataMap;
	}
//	public String getRemark() {
//		return remark;
//	}
//	public void setRemark(String remark) {
//		this.remark = remark;
//	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getKeyword1() {
		return keyword1;
	}

	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}

	public String getKeyword2() {
		return keyword2;
	}

	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}

	public String getKeyword3() {
		return keyword3;
	}

	public void setKeyword3(String keyword3) {
		this.keyword3 = keyword3;
	}

	public String getKeyword4() {
		return keyword4;
	}

	public void setKeyword4(String keyword4) {
		this.keyword4 = keyword4;
	}


	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public void setGetApplyData(Map getApplyData) {
		this.getApplyData = getApplyData;
	}


}
