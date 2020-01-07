package com.ruoyi.gzh.gzhuser.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 公众号关注用户对象 t_gzh_user
 * 
 * @author yanbs
 * @date 2019-12-10
 */
public class TGzhUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /**  */
    private String subscribe;

    /** 标识 */
    private String openid;

    /** 名称 */
    @Excel(name = "名称")
    private String nickname;

    /** 性别 */
    private String sex;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /** 国家 */
    @Excel(name = "国家")
    private String country;

    /** 城市 */
    @Excel(name = "城市")
    private String province;

    /** 头像 */
    @Excel(name = "头像")
    private String headimgurl;

    /** 维修类型 */
    @Excel(name = "维修类型")
    private String wxType;
    
    private String wxTypeName;

    /** 维修小区 */
    @Excel(name = "维修小区")
    private String wxDept;
    
    private String wxDeptName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSubscribe(String subscribe) 
    {
        this.subscribe = subscribe;
    }

    public String getSubscribe() 
    {
        return subscribe;
    }
    public void setOpenid(String openid) 
    {
        this.openid = openid;
    }

    public String getOpenid() 
    {
        return openid;
    }
    public void setNickname(String nickname) 
    {
        this.nickname = nickname;
    }

    public String getNickname() 
    {
        return nickname;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setCountry(String country) 
    {
        this.country = country;
    }

    public String getCountry() 
    {
        return country;
    }
    public void setProvince(String province) 
    {
        this.province = province;
    }

    public String getProvince() 
    {
        return province;
    }
    public void setHeadimgurl(String headimgurl) 
    {
        this.headimgurl = headimgurl;
    }

    public String getHeadimgurl() 
    {
        return headimgurl;
    }
    public void setWxType(String wxType) 
    {
        this.wxType = wxType;
    }

    public String getWxType() 
    {
        return wxType;
    }
    public void setWxDept(String wxDept) 
    {
        this.wxDept = wxDept;
    }

    public String getWxDept() 
    {
        return wxDept;
    }

    public String getWxDeptName() {
		return wxDeptName;
	}

	public void setWxDeptName(String wxDeptName) {
		this.wxDeptName = wxDeptName;
	}

	public String getWxTypeName() {
		return wxTypeName;
	}

	public void setWxTypeName(String wxTypeName) {
		this.wxTypeName = wxTypeName;
	}

	@Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("subscribe", getSubscribe())
            .append("openid", getOpenid())
            .append("nickname", getNickname())
            .append("sex", getSex())
            .append("city", getCity())
            .append("country", getCountry())
            .append("province", getProvince())
            .append("headimgurl", getHeadimgurl())
            .append("wxType", getWxType())
            .append("wxDept", getWxDept())
            .toString();
    }
}
