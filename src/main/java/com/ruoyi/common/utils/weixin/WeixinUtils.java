package com.ruoyi.common.utils.weixin;

import net.sf.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import com.alibaba.druid.util.StringUtils;
import com.github.wxpay.sdk.WXPayUtil;
import com.ruoyi.common.utils.StringHelper;
import com.ruoyi.common.utils.redis.RedisUtils;


/**
 * 获取地址类
 * 
 * @author ruoyi
 */
public class WeixinUtils
{
	private final static String APPID = "wx5dd341619c5814c4";
	private final static String SECRET = "d9e0a5056cd0d97b7de825bb4e6c2ba0"; 
	//获取tokenURL
	private  static String ACCESS_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
	//发送模板消息
	private  static String SEND_TEMPLATE_MSG = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN";
	//获取公众号用户
	private  static String GET_USERS_URL = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID";
	//获取用户信息
	private static String GET_USER_INFO = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";
	//模板ID
	private static String TEMPLATE_ID = "2a8gnP3k_xtUABAhyaUuoOioYbh3BZSgf8GNMrh5vIM";
	//支付
	//商户号
	private static String MCH_ID = "1568243791";
	private static String MCH_SECRET = "31106a4071f6428caf35566b86d1d382";
	
	
	public static void main(String[] args) {
		//getGz("");
		//getInfo("o3Qcywd0TPqpNUP4YlDez2w-tdkA");
		//sendWeappTemplateMsg("o3QcywXeCKfmC6zqLvwB-M0sY-xg", "", data);
		Map map = new HashMap();
		map.put("out_trade_no", "8574a85sd4f84");
		map.put("total_pay", "1");
		map.put("openid", "8574a85sd4f84");
		unifiedorder(map);
	}
	
	/**
	 * @descripton 获取 ACCESS_TOKEN
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月9日 下午5:07:18
	 */
	public static String getAccess_token() {
		String accessToken = "";
		try {
			if(RedisUtils.isExists("gcxw:access_token")){
				accessToken = RedisUtils.getValue("gcxw:access_token");
			}else{
				String requestUrl = ACCESS_TOKEN_URL.replace("APPID", APPID).replace("APPSECRET", SECRET);
				JSONObject jsonObject = httpRequst(requestUrl, "GET", null);
				System.out.println(jsonObject);
				accessToken = jsonObject.getString("access_token");
				RedisUtils.setValueWithTime("gcxw:access_token", accessToken, 3600);
			}
			return accessToken;
		} catch (Exception e) {
			e.printStackTrace();
			return "errer";
		}
	}

	
	/**
	 * @descripton 推送模板消息
	 * @param @param openId 待发送openId
	 * @param @param url  跳转URL
	 * @param @param data　参数（getTemplateMsg）
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月11日 下午4:41:41
	 */
	public static void sendWeappTemplateMsg(String openId, String url, Map data){
		try {
			Map map = new HashMap();
			map.put("touser", openId);//接收者openid
			map.put("template_id", TEMPLATE_ID);//模板id
			map.put("url", url);//跳转路径
			map.put("data", data);//参数
			String access_token = getAccess_token();
			String requestUrl = SEND_TEMPLATE_MSG.replace("ACCESS_TOKEN", access_token);
			JSONObject json =  JSONObject.fromObject(map);
			String jsonStr = json.toString();
			JSONObject jsonObject = httpRequst(requestUrl, "POST", jsonStr);
			System.out.println("jsonObject : " + jsonObject);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	/**
	 * @descripton 拉取公众号用户(openId)
	 * @param @param appid
	 * @param @param appsecret
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午9:17:06
	 */
	public static Map getGz(String nextOpenid) {
		try {
			String access_token = getAccess_token();
			if(StringHelper.isEmpty(nextOpenid))
				nextOpenid = "";

			String requestUrl = GET_USERS_URL.replace("ACCESS_TOKEN", access_token).replace("NEXT_OPENID", nextOpenid);
			JSONObject jsonObject = httpRequst(requestUrl, "GET", null);
			Map map = new HashMap();
			map.put("total", jsonObject.getString("total"));
			map.put("nextOpenid", jsonObject.getString("next_openid"));
			map.put("openIds", ((Map)jsonObject.get("data")).get("openid") );
			System.out.println(map);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @descripton 获取指定openId用户信息
	 * @param @param openId
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 下午4:30:46
	 */
	public static Map getInfo(String openId){
		try {
			String access_token = getAccess_token();

			String requestUrl = GET_USER_INFO.replace("ACCESS_TOKEN", access_token).replace("OPENID", openId);
			JSONObject jsonObject = httpRequst(requestUrl, "GET", null);
			Map map = jsonObject;
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	/**
	 * @descripton 微信支付统一下单
	 * @param @param pd
	 * @param @return
	 * @return Map  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:03:07
	 */
	public static Map unifiedorder(Map pd){
		//String total_fee = "1";
		String openid = (String) pd.get("openid");
		String total_pay = (String) pd.get("total_pay");
		String out_trade_no = (String) pd.get("out_trade_no");
		String body = (String) pd.get("body");
		if(StringUtils.isEmpty(body)){
			body = "港城小窝缴费";
		}
		try {
			Map<String, String> param = new HashMap<String, String>();
			param.put("appid", APPID);//小程序ID
			param.put("mch_id", MCH_ID);//商户号
			param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
			param.put("body", body);//商品描述
			param.put("out_trade_no", out_trade_no);//商户订单号
			param.put("total_fee", total_pay);//金额，单位为分
			param.put("spbill_create_ip", "127.0.0.1");//终端IP：无强制要求
			param.put("notify_url", "https://gcxw.altmoose.com/mobile/weixin/xqmanage/WxPayReturn");//通知地址：无强制要求
			//param.put("notify_url", "https://test360.altmoose.com/wechat/applet/wxgoodsinfo/finishOrder");//通知地址：无强制要求
			param.put("trade_type", "JSAPI");//支付类型：JSAPI--JSAPI支付（或小程序支付）、NATIVE--Native支付、APP--app支付，MWEB--H5支付，不同trade_type决定了调起支付的方式
			param.put("limit_pay", "no_credit");//指定支付方式：可限制用户不能使用信用卡支付
			param.put("openid", openid);//指定支付方式：可限制用户不能使用信用卡支付
			//生成带签名的xml
			System.out.println("param : " + param);
			String paramXml = WXPayUtil.generateSignedXml(param, MCH_SECRET);
			//System.out.println(paramXml);
			//调用接口链接
			String resultXml = httpRequstString("https://api.mch.weixin.qq.com/pay/unifiedorder", "POST", paramXml);
			Map resultMap = WXPayUtil.xmlToMap(resultXml);
			System.out.println("resultMap : " + resultMap);
			//二次签名,获取paySign
			String time = Long.toString(System.currentTimeMillis()).substring(0, 10);//获取10位时间戳
			
			System.out.println(time);
			
			Map signMap = new HashMap();
			String pkg = "prepay_id=" + resultMap.get("prepay_id");
			signMap.put("appId", resultMap.get("appid"));
			signMap.put("nonceStr", resultMap.get("nonce_str"));
			signMap.put("package", pkg);
			signMap.put("signType", "MD5");
			signMap.put("timeStamp", time);
			System.out.println("signMap : " + signMap);
			String paySign = WXPayUtil.generateSignature(signMap, MCH_SECRET);
			System.out.println(" : " + paySign);
			
			//返回结果内容重新封装 
			Map map = new HashMap();
			map.put("prepay_id",  resultMap.get("prepay_id"));
			map.put("nonceStr", resultMap.get("nonce_str"));//随机字符串
			map.put("package", pkg);//签名
			map.put("out_trade_no", out_trade_no);
			map.put("total_fee", total_pay);
			map.put("paySign", paySign);
			map.put("timeStamp", time);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * @descripton http请求，返回JSONObject
	 * @param @param requestUrl 请求URL
	 * @param @param requetMethod 请求类型 GET/POST
	 * @param @param outputStr 参数
	 * @param @return
	 * @return JSONObject  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:03:48
	 */
	public static JSONObject httpRequst(String requestUrl, String requetMethod,
			String outputStr) {
		JSONObject jsonobject = null;
		StringBuffer buffer = new StringBuffer();
		try {
			// 创建SSLContext对象，并使用我们指定的新人管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslcontext = SSLContext.getInstance("SSL", "SunJSSE");
			sslcontext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocktFactory对象
			SSLSocketFactory ssf = sslcontext.getSocketFactory();
			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url
					.openConnection();
			httpUrlConn.setSSLSocketFactory(ssf);
			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			httpUrlConn.setRequestMethod(requetMethod);
			if ("GET".equalsIgnoreCase(requetMethod))
				httpUrlConn.connect();
			// 当有数据需要提交时
			if (null != outputStr) {
				OutputStream outputStream = httpUrlConn.getOutputStream();
				// 注意编码格式，防止中文乱码
				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}
			// 将返回的输入流转换成字符串
			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(
					inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(
					inputStreamReader);
			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			jsonobject = JSONObject.fromObject(buffer.toString());
		} catch (ConnectException ce) {
			ce.printStackTrace();
			// TODO: handle exception
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonobject;
	}
	
	/**
	 * @descripton http请求，返回String
	 * @param @param requestUrl 请求URL
	 * @param @param requetMethod 请求类型 GET/POST
	 * @param @param outputStr 参数
	 * @param @return
	 * @return JSONObject  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月18日 上午11:03:48
	 */
	public static String httpRequstString(String requestUrl, String requetMethod,
			String outputStr) {
		String result = null;
		StringBuffer buffer = new StringBuffer();
		try {
			// 创建SSLContext对象，并使用我们指定的新人管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslcontext = SSLContext.getInstance("SSL", "SunJSSE");
			sslcontext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocktFactory对象
			SSLSocketFactory ssf = sslcontext.getSocketFactory();
			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url
					.openConnection();
			httpUrlConn.setSSLSocketFactory(ssf);
			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			httpUrlConn.setRequestMethod(requetMethod);
			if ("GET".equalsIgnoreCase(requetMethod))
				httpUrlConn.connect();
			// 当有数据需要提交时
			if (null != outputStr) {
				OutputStream outputStream = httpUrlConn.getOutputStream();
				// 注意编码格式，防止中文乱码
				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}
			// 将返回的输入流转换成字符串
			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(
					inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(
					inputStreamReader);
			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			result = buffer.toString();
		} catch (ConnectException ce) {
			ce.printStackTrace();
			// TODO: handle exception
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

class MyX509TrustManager implements X509TrustManager {
	public void checkClientTrusted(X509Certificate[] chain, String authType)
			throws CertificateException {

	}
	public void checkServerTrusted(X509Certificate[] chain, String authType)
			throws CertificateException {
	}
	public X509Certificate[] getAcceptedIssuers() {
		// TODO Auto-generated method stub
		return null;
	}
}
