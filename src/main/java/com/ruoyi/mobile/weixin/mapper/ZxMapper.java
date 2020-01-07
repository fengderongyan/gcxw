package com.ruoyi.mobile.weixin.mapper;

import java.util.List;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;

public interface ZxMapper {

	public PageData selectBannerVideo(Long nowDeptId);

	public List<PageData> selectBannerImgs(PageData pd);

	public List<PageData> selectRecDesigners(Long nowDeptId);

	public List<PageData> selectRecCompanys(Long nowDeptId);

	public PageData selectBannerImg(Long zx_banner_img_id);

	public List<PageData> selectDesignerList(PageData pd);

	public PageData selectDesigner(PageData pd);

	public List<PageData> selectCompanyList(PageData pd);

	public List<PageData> selectCompany(PageData pd);

	public List<PageData> selectRecMaterials(PageData pd);

	public PageData selectMaterial(PageData pd);

	public List<PageData> selectMaterialImgs(PageData pd);

	public PageData selectXqVr(PageData pd);

	public List<PageData> selectShowHomeList(PageData pd);

	public List<PageData> selectTypes(PageData pd);

	public PageData selectShowHomeByType(PageData type);

	public List<PageData> selectShowHomeImgs(PageData showHome);

	public PageData selectShowHome(PageData pd);

	public List<PageData> selectBannerVideoList(PageData pd);

	public List<PageData> selectForumList(PageData pd);

	public List<PageData> selectForumImgs(PageData forum);

	public void insertForm(PageData pd);

	public void insertFormImg(PageData param);

	public PageData selectForum(PageData pd);

	public List<PageData> selectReplyList(PageData pd);

	public void deleteForum(PageData pd);

	public void replyForum(PageData pd);

	public void deleteReply(PageData pd);

	public PageData selectIsCollection(PageData pd);

	public void collectForum(PageData pd);

	public void deleteCollection(PageData pd);

	public List<PageData> selectCaseList(PageData pd);

	public PageData selectCase(PageData pd);

	public List<PageData> selectMaterialBanners(PageData pd);

	public PageData selectMaterialBannerDetail(PageData pd);

	public List<PageData> selectMaterialList(PageData pd);

}
