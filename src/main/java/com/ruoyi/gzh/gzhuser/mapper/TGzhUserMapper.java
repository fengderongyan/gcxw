package com.ruoyi.gzh.gzhuser.mapper;

import com.ruoyi.gzh.gzhuser.domain.TGzhUser;

import java.util.List;

/**
 * 公众号关注用户Mapper接口
 * 
 * @author yanbs
 * @date 2019-12-10
 */
public interface TGzhUserMapper 
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
     * 删除公众号关注用户
     * 
     * @param id 公众号关注用户ID
     * @return 结果
     */
    public int deleteTGzhUserById(Long id);

    /**
     * 批量删除公众号关注用户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTGzhUserByIds(String[] ids);
    
    /**
     * 清空临时表
     * 
     * @return 结果
     */
    public int deleteAllLsUser();
    
    /**
     * 保存临时表信息
     * 
     * @return 结果
     */
    public int insertLsGzhUser(TGzhUser tGzhUser);
    
    /**
     * 更新真实表
     * 
     * @return 结果
     */
    public int updateTGzhUserByLs();
}
