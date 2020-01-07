package com.ruoyi.manage.materialstore.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 建材商管理对象 t_zx_material_store
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public class ZxMaterialStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long materialStoreId;

    /** 商家名称 */
    @Excel(name = "商家名称")
    private String storeName;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 联系人 */
    @Excel(name = "联系人")
    private String lxrName;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String lxrPhone;

    /** 主营范围 */
    @Excel(name = "主营范围")
    private String zyfw;

    /** 商家介绍 */
    @Excel(name = "商家介绍")
    private String detail;

    public void setMaterialStoreId(Long materialStoreId) 
    {
        this.materialStoreId = materialStoreId;
    }

    public Long getMaterialStoreId() 
    {
        return materialStoreId;
    }
    public void setStoreName(String storeName) 
    {
        this.storeName = storeName;
    }

    public String getStoreName() 
    {
        return storeName;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setLxrName(String lxrName) 
    {
        this.lxrName = lxrName;
    }

    public String getLxrName() 
    {
        return lxrName;
    }
    public void setLxrPhone(String lxrPhone) 
    {
        this.lxrPhone = lxrPhone;
    }

    public String getLxrPhone() 
    {
        return lxrPhone;
    }
    public void setZyfw(String zyfw) 
    {
        this.zyfw = zyfw;
    }

    public String getZyfw() 
    {
        return zyfw;
    }
    public void setDetail(String detail) 
    {
        this.detail = detail;
    }

    public String getDetail() 
    {
        return detail;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("materialStoreId", getMaterialStoreId())
            .append("storeName", getStoreName())
            .append("address", getAddress())
            .append("lxrName", getLxrName())
            .append("lxrPhone", getLxrPhone())
            .append("zyfw", getZyfw())
            .append("detail", getDetail())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
