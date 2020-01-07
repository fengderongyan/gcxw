package com.ruoyi.mobile.weixin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.ResultUtils;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.manage.zxbannerimg.domain.ZxBannerImg;
import com.ruoyi.manage.zxbannervideo.domain.ZxBannerVideo;
import com.ruoyi.manage.zxbannervideo.service.IZxBannerVideoService;
import com.ruoyi.mobile.weixin.service.ZxService;

@RestController
@RequestMapping("mobile/weixin/zx")
public class ZxController extends BaseController{

	@Autowired
	private ZxService zxService;
	
	/**
	 * 首页banner
	 * @return
	 */
	@RequestMapping("selectBanners")
	public Map selectBanners(){
		try {
			PageData resultpd = new PageData();
			PageData zxBannerVideo = zxService.selectBannerVideo();
			Integer limitNum = 5;
			resultpd.put("isHasVideo", 0);
			if(zxBannerVideo != null){//如果有视频，则全部显示图片，且最多五张
				limitNum = 4;
				resultpd.put("isHasVideo", 1);
				resultpd.put("bannerVideo", zxBannerVideo);
			}
			List<PageData> bannerImgs = zxService.selectBannerImgs(limitNum);
			resultpd.put("bannerImgs", bannerImgs);
			return ResultUtils.returnOk(resultpd);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectBannerVideo")
	public Map selectBannerVideo(Long zx_banner_video_id){
		try {
			if(zx_banner_video_id == null){
				return ResultUtils.returnError(12001, "zx_banner_video_id不能为空");
			}
			PageData pd = zxService.selectBannerVideo(zx_banner_video_id);
			return ResultUtils.returnOk(pd);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectBannerImg")
	public Map selectBannerImg(Long zx_banner_img_id){
		try {
			if(zx_banner_img_id == null){
				return ResultUtils.returnError(12001, "zx_banner_img_id不能为空");
			}
			PageData pd = zxService.selectBannerImg(zx_banner_img_id);
			return ResultUtils.returnOk(pd);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	/**
	 * 获取首页设计师推荐列表
	 * @return
	 */
	@RequestMapping("selectRecDesigners")
	public Map selectRecDesigners(){
		try {
			
			List<PageData> designers =  zxService.selectRecDesigners();
			return ResultUtils.returnOk(designers);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectDesignerList")
	public Map selectDesignerList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			startPage();
			Long nowDeptId = this.getWxUser().getNowDeptId();
			pd.put("nowDeptId", nowDeptId);
			List<PageData> designerList = zxService.selectDesignerList(pd);
			return ResultUtils.returnOk(designerList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectDesigner")
	public Map selectDesigner(){
		try {
			PageData pd = this.getPageData();
			String designer_id = pd.getString("designer_id");
			if("".equals(designer_id)){
				return ResultUtils.returnError(12001, "designer_id不能为空");
			}
			pd.put("isMain", 1);
			PageData designer = zxService.selectDesigner(pd);
			return ResultUtils.returnOk(designer);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectCaseList")
	public Map selectCaseList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			String designer_id = pd.getString("designer_id");
			if("".equals(designer_id)){
				return ResultUtils.returnError(12001, "designer_id不能为空");
			}
			List<PageData> caseList = zxService.selectCaseList(pd);
			return ResultUtils.returnOk(caseList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectCase")
	public Map selectCase(){
		try {
			PageData pd = this.getPageData();
			String case_id = pd.getString("case_id");
			if("".equals(case_id)){
				return ResultUtils.returnError(12001, "case_id不能为空");
			}
			PageData zxcase = zxService.selectCase(pd);
			return ResultUtils.returnOk(zxcase);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectRecCompanys")
	public Map selectRecCompanys(){
		try {
			
			List<PageData> companys =  zxService.selectRecCompanys();
			return ResultUtils.returnOk(companys);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectCompanyList")
	public Map selectCompanyList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			startPage();
			Long nowDeptId = this.getWxUser().getNowDeptId();
			pd.put("nowDeptId", nowDeptId);
			List<PageData> companys =  zxService.selectCompanyList(pd);
			return ResultUtils.returnOk(companys);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectCompany")
	public Map selectCompany(){
		try {
			PageData pd = this.getPageData();
			String zx_company_id = pd.getString("zx_company_id");
			if("".equals(zx_company_id)){
				return ResultUtils.returnError(12001, "zx_company_id不能为空");
			}
			List<PageData> companys =  zxService.selectCompany(pd);
			return ResultUtils.returnOk(companys);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectRecMaterials")
	public Map selectRecMaterials(){
		try {
			PageData pd = this.getPageData();
			pd.put("deptId", this.getWxUser().getNowDeptId());
			List<PageData> materials = zxService.selectRecMaterials(pd);
			return ResultUtils.returnOk(materials);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectMaterial")
	public Map selectMaterial(){
		try {
			PageData pd = this.getPageData();
			String material_id = pd.getString("material_id");
			if("".equals(material_id)){
				return ResultUtils.returnError(12001, "material_id不能为空");
			}
			PageData material = zxService.selectMaterial(pd);
			return ResultUtils.returnOk(material);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectXqVr")
	public Map selectXqVr(){
		try {
			PageData pd = this.getPageData();
			pd.put("dept_id", this.getWxUser().getNowDeptId());
			PageData vr = zxService.selectXqVr(pd);
			return ResultUtils.returnOk(vr);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectShowHomeType")
	public Map selectShowHomeType(){
		try {
			PageData pd = this.getPageData();
			List<PageData> showHomeType = zxService.selectShowHomeType(pd);
			return ResultUtils.returnOk(showHomeType);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectShowHomeList")
	public Map selectShowHomeList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			String type = pd.getString("type");
			if("".equals(type)){
				return ResultUtils.returnError(12001, "type不能为空");
			}
			startPage();
//			Long nowDeptId = this.getWxUser().getNowDeptId();
//			pd.put("dept_id", nowDeptId);
			List<PageData> showHomeList = zxService.selectShowHomeList(pd);
			return ResultUtils.returnOk(showHomeList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectShowHome")
	public Map selectShowHome(){
		try {
			PageData pd = this.getPageData();
			String show_home_id = pd.getString("show_home_id");
			if("".equals(show_home_id)){
				return ResultUtils.returnError(12001, "show_home_id不能为空");
			}
			PageData showHome = zxService.selectShowHome(pd);
			return ResultUtils.returnOk(showHome);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectBannerVideoList")
	public Map selectBannerVideoList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			startPage();
			Long nowDeptId = this.getWxUser().getNowDeptId();
			pd.put("dept_id", nowDeptId);
			List<PageData> videoList = zxService.selectBannerVideoList(pd);
			return ResultUtils.returnOk(videoList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectForumList")
	public Map selectForumList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			startPage();
			List<PageData> forumList = zxService.selectForumList(pd);
			return ResultUtils.returnOk(forumList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectForum")
	public Map selectForum(){
		try {
			
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			PageData forum = zxService.selectForum(pd);
			if(forum == null){
				return ResultUtils.returnError(12002, "该文章不存在或已被删除");
			}
			return ResultUtils.returnOk(forum);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("deleteForum")
	public Map deleteForum(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			zxService.deleteForum(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("selectReplyList")
	public Map selectReplyList(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			startPage();
			List<PageData> replyList = zxService.selectReplyList(pd);
			return ResultUtils.returnOk(replyList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("insertForm")
	public Map insertForm(){
		try {
			PageData pd = this.getPageData();
			String title = pd.getString("title");
			String content = pd.getString("content");
			String head_img = pd.getString("head_img");
			String nickname = pd.getString("nickname");
			if("".equals(title)){
				return ResultUtils.returnError(12001, "title不能为空");
			}
			if("".equals(content)){
				return ResultUtils.returnError(12001, "content不能为空");
			}
			if("".equals(head_img)){
				return ResultUtils.returnError(12001, "head_img不能为空");
			}
			if("".equals(nickname)){
				return ResultUtils.returnError(12001, "nickname不能为空");
			}
			pd.put("openid", this.getWxUser().getOpenid());
			zxService.insertForm(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("replyForum")
	public Map replyForum(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			String reply_head_img = pd.getString("reply_head_img");
			String reply_nickname = pd.getString("reply_nickname");
			String reply_content = pd.getString("reply_content");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			if("".equals(reply_head_img)){
				return ResultUtils.returnError(12001, "reply_head_img不能为空");
			}
			if("".equals(reply_nickname)){
				return ResultUtils.returnError(12001, "reply_nickname不能为空");
			}
			if("".equals(reply_content)){
				return ResultUtils.returnError(12001, "reply_content不能为空");
			}
			pd.put("reply_openid", this.getWxUser().getOpenid());
			zxService.replyForum(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("deleteReply")
	public Map deleteReply(){
		try {
			PageData pd = this.getPageData();
			String forum_reply_id = pd.getString("forum_reply_id");
			if("".equals(forum_reply_id)){
				return ResultUtils.returnError(12001, "forum_reply_id不能为空");
			}
			zxService.deleteReply(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	/**
	 * 判断文章是否收藏
	 * @return
	 */
	@RequestMapping("selectIsCollection")
	public Map selectIsCollection(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			PageData res = zxService.selectIsCollection(pd);
			return ResultUtils.returnOk(res); 
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
	}
	
	@RequestMapping("collectForum")
	public Map collectForum(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			String forum_title = pd.getString("forum_title");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			if("".equals(forum_title)){
				return ResultUtils.returnError(12001, "forum_title不能为空");
			}
			pd.put("openid", this.getWxUser().getOpenid());
			zxService.collectForum(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("deleteCollection")
	public Map deleteCollection(){
		try {
			PageData pd = this.getPageData();
			String forum_id = pd.getString("forum_id");
			if("".equals(forum_id)){
				return ResultUtils.returnError(12001, "forum_id不能为空");
			}
			pd.put("openid", this.getWxUser().getOpenid());
			zxService.deleteCollection(pd);
			return ResultUtils.returnOk();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectMaterialBanners")
	public Map selectMaterialBanners(){
		try {
			List<PageData> banners = zxService.selectMaterialBanners();
			return ResultUtils.returnOk(banners);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectMaterialBannerDetail")
	public Map selectMaterialBannerDetail(){
		try {
			PageData pd = this.getPageData();
			String material_banner_id = pd.getString("material_banner_id");
			if("".equals(material_banner_id)){
				return ResultUtils.returnError(12001, "material_banner_id不能为空");
			}
			PageData banner = zxService.selectMaterialBannerDetail(pd);
			return ResultUtils.returnOk(banner);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
	@RequestMapping("selectMaterialList")
	public Map selectMaterialList(){
		try {
			PageData pd = this.getPageData();
			String pageSize = pd.getString("pageSize");
			if("".equals(pageSize)){
				return ResultUtils.returnError(12001, "pageSize不能为空");
			}
			String pageNum = pd.getString("pageNum");
			if("".equals(pageNum)){
				return ResultUtils.returnError(12001, "pageNum不能为空");
			}
			pd.put("deptId", this.getWxUser().getNowDeptId());
			startPage();
			List<PageData> materialList = zxService.selectMaterialList(pd);
			return ResultUtils.returnOk(materialList);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台异常");
		}
		
	}
	
}
