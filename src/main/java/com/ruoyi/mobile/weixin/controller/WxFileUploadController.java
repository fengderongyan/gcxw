package com.ruoyi.mobile.weixin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ruoyi.common.utils.BASE64DecodedMultipartFile;
import com.ruoyi.common.utils.PageData;
import com.ruoyi.common.utils.ResultUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.framework.config.ServerConfig;
import com.ruoyi.framework.web.controller.BaseController;

/**
 * 描述：文件上传
 * @author yanbs
 * @Date 2019-09-04
 */
@RestController
@RequestMapping("/mobile/weixin/file")
public class WxFileUploadController extends BaseController{
	
	@Autowired
    private ServerConfig serverConfig;

	/**
	 * 描述：文件上传至OSS
	 * @return
	 * @author yanbs
	 * @Date 2019-09-04
	 */
	@RequestMapping("/fileUpload")
	public Map fileUpload(){
		try {
			PageData pd = this.getPageData();
			String fileBase64 = pd.getString("fileBase64");
			String fileName = pd.getString("fileName");
			if("".equals(fileBase64)){
				return ResultUtils.returnError(12001, "fileBase64不能为空");
			}
			if("".equals(fileName)){
				return ResultUtils.returnError(12001, "fileName不能为空");
			}
			//解码文件base64
			/*Base64.Decoder decoder = Base64.getDecoder();
			byte[] fileBytes = decoder.decode(fileBase64);
			
			SimpleDateFormat dateFormat=new SimpleDateFormat("/yyyy/MM/dd/");
			String dateStr = dateFormat.format(new Date());
			String uploadPath = "upload" + dateStr;
			String pic_name = DateHelper.getImageName();
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			String filePath = ImageSample.byteUpload(fileBytes, uploadPath + pic_name + suffix);
			Map fileMap = new HashMap();
			fileMap.put("filePath", filePath);
			return ResultUtils.returnOk(fileMap);*/
			MultipartFile mfile = BASE64DecodedMultipartFile.base64ToMultipart(fileBase64, fileName);
			// 上传文件路径
            String filePath = RuoYiConfig.getUploadPath();
            // 上传并返回新文件名称
            String newFileName = FileUploadUtils.upload(filePath, mfile);
            String url = serverConfig.getUrl() + newFileName;
            Map fileMap = new HashMap();
			fileMap.put("filePath", url);
			return ResultUtils.returnOk(fileMap);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.returnError(-1, "后台运行异常");
		}
		
		
	}
}
