package com.ruoyi.gzh.gzhuser.service;

import com.ruoyi.gzh.gzhuser.domain.TGzhUser;

import java.util.List;

/**
 * 公众号关注用户Service接口
 * 
 * @author yanbs
 * @date 2019-12-10
 */
public interface ITGzhUserService 
{
    /**
     * 查询公众号关注用户
     * 
     * @param id 公众号关注用户ID
     * @return 公众号关注用户
     */
    public TGzhUser selectTGzhUserById(Long id);
    

    /**
     * 查询公众号关注用户列表
     * 
     * @param tGzhUser 公众号关注用户
     * @return 公众号关注用户集合
     */
    public List<TGzhUser> selectTGzhUserList(TGzhUser tGzhUser);

    /**
     * 新增公众号关注用户
     * 
     * @param tGzhUser 公众号关注用户
     * @return 结果
     */
    public int insertTGzhUser(TGzhUser tGzhUser);

    /**
     * 修改公众号关注用户
     * 
     * @param tGzhUser 公众号关注用户
     * @return 结果
     */
    public int updateTGzhUser(TGzhUser tGzhUser);

    /**
     * 批量删除公众号关注用户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTGzhUserByIds(String ids);

    /**
     * 删除公众号关注用户信息
     * 
     * @param id 公众号关注用户ID
     * @return 结果
     */
    public int deleteTGzhUserById(Long id);
    
    /**
     * @descripton 拉取关注用户
     * @param @param tGzhUser
     * @param @return
     * @return int  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月11日 上午9:35:46
     */
    public int loadGzhUser(TGzhUser tGzhUser);
    
    
    /**
     * @descripton 删除临时表全部数据
     * @param @return
     * @return int  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月11日 上午9:38:33
     */
    public int deleteAllLsUser();
    
    /**
     * @descripton 插入临时表
     * @param @param tGzhUser
     * @param @return
     * @return int  
     * @throws 
     * @author: 张成才
     * @date: 2019年12月11日 上午9:44:00
     */
    public int insertLsGzhUser(TGzhUser tGzhUser);
    
}
