package com.ruoyi.mobile.weixin.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.framework.web.service.BaseService;
import com.ruoyi.manage.zxbannerimg.domain.ZxBannerImg;
import com.ruoyi.manage.zxbannerimg.mapper.ZxBannerImgMapper;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.manage.zxbannervideo.mapper.ZxBannerVideoMapper;
import com.ruoyi.mobile.weixin.mapper.ZxMapper;

@Service
public class ZxService extends BaseService{
	
	@Autowired
	private ZxMapper zxMapper;

	@Autowired
	private ZxBannerVideoMapper zxBannerVideoMapper;
	@Autowired
	private ZxBannerImgMapper zxBannerImgMapper;
	
	public PageData selectBannerVideo() {
		Long nowDeptId = this.getWxUser().getNowDeptId();
		return zxMapper.selectBannerVideo(nowDeptId);
	}

	public List<PageData> selectBannerImgs(Integer limitNum) {
		// TODO Auto-generated method stub
		Long nowDeptId = this.getWxUser().getNowDeptId();
		PageData pd = new PageData();
		pd.put("nowDeptId", nowDeptId);
		pd.put("limitNum", limitNum);
		return zxMapper.selectBannerImgs(pd);
	}

	public List<PageData> selectRecDesigners() {
		Long nowDeptId = this.getWxUser().getNowDeptId();
		return zxMapper.selectRecDesigners(nowDeptId);
	}

	public List<PageData> selectRecCompanys() {
		Long nowDeptId = this.getWxUser().getNowDeptId();
		return zxMapper.selectRecCompanys(nowDeptId);
	}

	public PageData selectBannerVideo(Long zx_banner_video_id) {
		// TODO Auto-generated method stub
		return zxMapper.selectBannerVideo(zx_banner_video_id);
	}

	public PageData selectBannerImg(Long zx_banner_img_id) {
		// TODO Auto-generated method stub
		return zxMapper.selectBannerImg(zx_banner_img_id);
	}

	public List<PageData> selectDesignerList(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectDesignerList(pd);
	}

	public PageData selectDesigner(PageData pd) {
		PageData res = zxMapper.selectDesigner(pd);
		List<PageData> resLIst = selectCaseList(pd);
		res.put("caseList", resLIst);
		return res;
	}
	
	public List<PageData> selectCaseList(PageData pd){
		List<PageData> resLIst = Lists.newArrayList();
		List<PageData> caseList = zxMapper.selectCaseList(pd);
		resLIst = caseList.stream().map(zxcase ->{
			String imgUrls = zxcase.getString("imgUrls");
			String[] imgUrlArr = imgUrls.split(",");
			zxcase.put("imgUrls", imgUrlArr);
			return zxcase;
		}).collect(Collectors.toList());
		return resLIst;
	}

	public List<PageData> selectCompanyList(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectCompanyList(pd);
	}

	public List<PageData> selectCompany(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectCompany(pd);
	}

	public List<PageData> selectRecMaterials(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectRecMaterials(pd);
	}

	public PageData selectMaterial(PageData pd) {
		PageData material = zxMapper.selectMaterial(pd);
		List<PageData> materialImgs = zxMapper.selectMaterialImgs(pd);
		material.put("materialImgs", materialImgs);
		return material;
	}

	public PageData selectXqVr(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectXqVr(pd);
	}

	public List<PageData> selectShowHomeList(PageData pd) {
		List<PageData> results = new ArrayList<PageData>();
		List<PageData> showHomeList = zxMapper.selectShowHomeList(pd);
		if(showHomeList != null && showHomeList.size() > 0){
			for (PageData showHome : showHomeList) {
				List<PageData> showHomeImgs = zxMapper.selectShowHomeImgs(showHome);
				showHome.put("showHomeImgs", showHomeImgs);
				results.add(showHome);
			}
		}
		return results;
	}

	public List<PageData> selectShowHomeType(PageData pd) {
		List<PageData> showHomeType = new ArrayList<PageData>();
		List<PageData> types = zxMapper.selectTypes(pd);
		if(types != null && types.size() > 0){
			for (PageData type : types) {
				PageData showHome = zxMapper.selectShowHomeByType(type);
				if(showHome != null){
					List<PageData> showHomeImgs = zxMapper.selectShowHomeImgs(showHome);
					showHome.put("showHomeImgs", showHomeImgs);
					type.put("showHome", showHome);
					showHomeType.add(type);
				}
			}
			
		}
		return showHomeType;
	}

	public PageData selectShowHome(PageData pd) {
		PageData showHome = zxMapper.selectShowHome(pd);
		List<PageData> showHomeImgs = zxMapper.selectShowHomeImgs(showHome);
		showHome.put("showHomeImgs", showHomeImgs);
		return showHome;
	}

	public List<PageData> selectBannerVideoList(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectBannerVideoList(pd);
	}

	public List<PageData> selectForumList(PageData pd) {
		pd.put("openid", this.getWxUser().getOpenid());
		List<PageData> resultList = new ArrayList<PageData>();
		List<PageData> forumList =zxMapper.selectForumList(pd);
		if(forumList != null && forumList.size() > 0){
			for (PageData forum : forumList) {
				List<PageData> forumImgs = zxMapper.selectForumImgs(forum);
				forum.put("forumImgs", forumImgs);
				resultList.add(forum);
			}
		}
		return resultList;
	}

	@Transactional
	public void insertForm(PageData pd) {
		pd.put("forum_id", "");
		zxMapper.insertForm(pd);
		String forum_id = pd.getString("forum_id");
		String imgUrls = pd.getString("imgUrls");
		if(!"".equals(imgUrls)){
			String[] imgUrlArr = imgUrls.split(",");
			for (int i = 0; i < imgUrlArr.length; i++) {
				PageData param = new PageData();
				param.put("forum_id", forum_id);
				param.put("img_url", imgUrlArr[0]);
				zxMapper.insertFormImg(param);
			}
		}
	}

	public PageData selectForum(PageData pd) {
		pd.put("openid", this.getWxUser().getOpenid());
		PageData forum = zxMapper.selectForum(pd);
		if(forum != null){
			List<PageData> forumImgs = zxMapper.selectForumImgs(pd);
			forum.put("forumImgs", forumImgs);
		}
		return forum;
	}

	public List<PageData> selectReplyList(PageData pd) {
		pd.put("openid", this.getWxUser().getOpenid());
		return zxMapper.selectReplyList(pd);
	}

	public void deleteForum(PageData pd) {
		// TODO Auto-generated method stub
		zxMapper.deleteForum(pd);
	}

	public void replyForum(PageData pd) {
		// TODO Auto-generated method stub
		zxMapper.replyForum(pd);
	}

	public void deleteReply(PageData pd) {
		// TODO Auto-generated method stub
		zxMapper.deleteReply(pd);
	}

	public PageData selectIsCollection(PageData pd) {
		pd.put("openid", this.getWxUser().getOpenid());
		return zxMapper.selectIsCollection(pd);
	}

	public void collectForum(PageData pd) {
		// TODO Auto-generated method stub
		zxMapper.collectForum(pd);
	}

	public void deleteCollection(PageData pd) {
		// TODO Auto-generated method stub
		zxMapper.deleteCollection(pd);
	}

	public PageData selectCase(PageData pd) {
		PageData zxcase = zxMapper.selectCase(pd);
		String imgUrls = zxcase.getString("imgUrls");
		String[] imgUrlArr = imgUrls.split(",");
		zxcase.put("imgUrls", imgUrlArr);
		return zxcase;
	}

	public List<PageData> selectMaterialBanners() {
		PageData pd = new PageData();
		pd.put("deptId", this.getWxUser().getNowDeptId());
		return zxMapper.selectMaterialBanners(pd);
	}

	public PageData selectMaterialBannerDetail(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectMaterialBannerDetail(pd);
	}

	public List<PageData> selectMaterialList(PageData pd) {
		// TODO Auto-generated method stub
		return zxMapper.selectMaterialList(pd);
	}

	
	
}
