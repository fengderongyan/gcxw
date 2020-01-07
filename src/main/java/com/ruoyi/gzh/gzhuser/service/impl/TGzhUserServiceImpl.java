package com.ruoyi.gzh.gzhuser.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gzh.gzhuser.mapper.TGzhUserMapper;
import com.ruoyi.gzh.gzhuser.domain.TGzhUser;
import com.ruoyi.gzh.gzhuser.service.ITGzhUserService;
import com.ruoyi.common.utils.StringHelper;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.common.utils.weixin.WeixinUtils;

/**
 * 公众号关注用户Service业务层处理
 * 
 * @author yanbs
 * @date 2019-12-10
 */
@Service
public class TGzhUserServiceImpl implements ITGzhUserService 
{
    @Autowired
    private TGzhUserMapper tGzhUserMapper;

    /**
     * 查询公众号关注用户
     * 
     * @param id 公众号关注用户ID
     * @return 公众号关注用户
     */
    @Override
    public TGzhUser selectTGzhUserById(Long id)
    {
        return tGzhUserMapper.selectTGzhUserById(id);
    }
    

    /**
     * 查询公众号关注用户列表
     * 
     * @param tGzhUser 公众号关注用户
     * @return 公众号关注用户
     */
    @Override
    public List<TGzhUser> selectTGzhUserList(TGzhUser tGzhUser)
    {
        return tGzhUserMapper.selectTGzhUserList(tGzhUser);
    }

    /**
     * 新增公众号关注用户
     * 
     * @param tGzhUser 公众号关注用户
     * @return 结果
     */
    @Override
    public int insertTGzhUser(TGzhUser tGzhUser)
    {
        return tGzhUserMapper.insertTGzhUser(tGzhUser);
    }

    /**
     * 修改公众号关注用户
     * 
     * @param tGzhUser 公众号关注用户
     * @return 结果
     */
    @Override
    public int updateTGzhUser(TGzhUser tGzhUser)
    {
        return tGzhUserMapper.updateTGzhUser(tGzhUser);
    }

    /**
     * 删除公众号关注用户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTGzhUserByIds(String ids)
    {
        return tGzhUserMapper.deleteTGzhUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除公众号关注用户信息
     * 
     * @param id 公众号关注用户ID
     * @return 结果
     */
    public int deleteTGzhUserById(Long id)
    {
        return tGzhUserMapper.deleteTGzhUserById(id);
    }

	@Override
	public int loadGzhUser(TGzhUser tGzhUser) {
		String nextOpenid = "";
		Map map = WeixinUtils.getGz(nextOpenid);
		Map info = new HashMap();
		int total =  Integer.valueOf(StringHelper.get(map, "total"));//关注总数
		nextOpenid = (String) map.get("nextOpenid");
		List list = new ArrayList();
		String openId = "";
		int boundary = (int)Math.ceil((double)total / 10000);
		
		try {
			this.deleteAllLsUser();
			for(int i = 0; i < boundary; i ++){
				list = (List) map.get("openIds");
				for(int j = 0; j < list.size(); j ++){
					openId = (String) list.get(j);
					info = WeixinUtils.getInfo(openId);
					//设置信息,并保存
					tGzhUser.setCity(StringHelper.get(info, "city"));
					tGzhUser.setCountry(StringHelper.get(info, "country"));
					tGzhUser.setHeadimgurl(StringHelper.get(info, "headimgurl"));
					tGzhUser.setNickname(StringHelper.get(info, "nickname"));
					tGzhUser.setOpenid(StringHelper.get(info, "openid"));
					tGzhUser.setProvince(StringHelper.get(info, "province"));
					tGzhUser.setSex(StringHelper.get(info, "sex"));
					this.insertLsGzhUser(tGzhUser);
				}
				//更新map及nextOpenid
				if(boundary > 1){
					map = WeixinUtils.getGz(nextOpenid);
					nextOpenid = (String) map.get("nextOpenid");
				}
			}
			//更新真实表逻辑
			this.updateTGzhUserByLs();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public int deleteAllLsUser() {
		
		return tGzhUserMapper.deleteAllLsUser();
	}
	
	@Override
    public int insertLsGzhUser(TGzhUser tGzhUser)
    {
        return tGzhUserMapper.insertLsGzhUser(tGzhUser);
    }
	
	public int updateTGzhUserByLs(){
		return tGzhUserMapper.updateTGzhUserByLs();
	}
}
