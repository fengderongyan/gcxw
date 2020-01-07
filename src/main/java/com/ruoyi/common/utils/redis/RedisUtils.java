package com.ruoyi.common.utils.redis;

import net.sf.json.JSONObject;
import redis.clients.jedis.Jedis;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * 获取地址类
 * 
 * @author ruoyi
 */
public class RedisUtils
{
	//redis 缓存相关
	private final static String host = "47.99.149.209";
	private final static int port = 6379;
	private static Jedis jedis = null;
	
	public static void main(String[] args) {
		
	}
	
	/**
	 * @descripton 获取jedis连接
	 * @param @return
	 * @return Jedis  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:21:03
	 */
	public static Jedis getJedis(){
		jedis = new Jedis(host,port);//建立连接
        jedis.auth("jssgy2019.");//设置连接密码
        jedis.select(0);//选中DB
        return jedis;
	}
	
	/**
	 * @descripton 获取key值
	 * @param @param key
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 下午3:56:44
	 */
	public static String getValue(String key){
		try {
			Jedis jedis = getJedis();
			return jedis.get(key);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
	}
	
	/**
	 * @descripton 设置key--value
	 * @param @param key
	 * @param @param value
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:24:44
	 */
	public static void setValue(String key, String value){
		try {
			Jedis jedis = getJedis();
			jedis.set(key, value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton 获取指定key的剩余生存时间（秒）
	 * @param @param key
	 * @param @return
	 * @return Long  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:55:45
	 */
	public static Long getTimeByKey(String key){
		try {
			Jedis jedis = getJedis();
			return jedis.ttl(key);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @descripton 设置键值及过期时间（秒）
	 * @param @param key
	 * @param @param value
	 * @param @param seconds
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:31:58
	 */
	public static void setValueWithTime(String key, String value, int seconds){
		try {
			Jedis jedis = getJedis();
			jedis.setex(key, seconds, value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton 如key不存在则设置value，否则不做操作
	 * @param @param key
	 * @param @param value
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:46:44
	 */
	public static void setValueIf(String key, String value){
		try {
			Jedis jedis = getJedis();
			jedis.setnx(key, value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton 在指定value后追加值
	 * @param @param key
	 * @param @param value 要追加的值
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:34:25
	 */
	public static void appendValue(String key, String value){
		try {
			Jedis jedis = getJedis();
			jedis.append(key, value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton 设置指定key的超时时间
	 * @param @param key
	 * @param @param seconds
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:38:09
	 */
	public static void setTime(String key, int seconds){
		try {
			Jedis jedis = getJedis();
			jedis.expire(key, seconds);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton key值是否存在
	 * @param @param key
	 * @param @return
	 * @return boolean  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:40:21
	 */
	public static boolean isExists(String key){
		boolean exists = false;
		try {
			Jedis jedis = getJedis();
			exists = jedis.exists(key);
			return exists;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	/**
	 * @descripton 如果key包含指定字段，则返回值
	 * @param @param key
	 * @param @param field
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:43:34
	 */
	public static String isExists(String key, String field){
		boolean exists = false;
		try {
			Jedis jedis = getJedis();
			return jedis.hget(key, field);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
	}
	
	/**
	 * @descripton 删除指定key
	 * @param @param key
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:36:21
	 */
	public static void delKey(String key){
		try {
			Jedis jedis = getJedis();
			jedis.del(key);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @descripton 新增map
	 * @param @param key
	 * @param @param map
	 * @param @return
	 * @return String  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:48:46
	 */
	public String addMap(String key, Map<String, String> map) {
		 Jedis jedis = getJedis();
		 String result = jedis.hmset(key,map);
		 jedis.close();
		 return result;
	}
	
	/**
	 * @descripton 获取map
	 * @param @param key
	 * @param @return
	 * @return Map<String,String>  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:49:11
	 */
	public Map<String,String> getMap(String key){
		Jedis jedis = getJedis();
		Map<String, String> map = new HashMap<String, String>();
		Iterator<String> iter=jedis.hkeys(key).iterator();
		 while (iter.hasNext()){  
	    	 String ikey = iter.next();  
	    	 map.put(ikey, jedis.hmget(key,ikey).get(0));
	    	 }
		 jedis.close();
		 return map;
	}
	
	/**
	 * @descripton 新增List
	 * @param @param key
	 * @param @param list
	 * @return void  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:49:46
	 */
	public void addList(String key, List<String> list){
		Jedis jedis = getJedis();
		jedis.del(key); //开始前，先移除所有的内容  
		for(String value:list){
			jedis.rpush(key,value); 
		}
		jedis.close();
	}
	
	/**
	 * @descripton 获取List
	 * @param @param key
	 * @param @return
	 * @return List<String>  
	 * @throws 
	 * @author: 张成才
	 * @date: 2019年12月10日 上午11:50:12
	 */
	public List<String> getList(String key){
		Jedis jedis = getJedis();
		List<String> list = jedis.lrange(key,0,-1);
		jedis.close();
		return list;
	}
	
	
}
