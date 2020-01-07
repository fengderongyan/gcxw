package com.ruoyi.manage.zxmaterial.domain;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import com.ruoyi.manage.materialstore.domain.ZxMaterialStore;

/**
 * 建材商品管理对象 t_zx_material
 * 
 * @author yanbs
 * @date 2019-12-19
 */
public class ZxMaterial extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long materialId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 标题图片 */
    @Excel(name = "标题图片")
    private String imgUrl;

    /** 建材类型 */
    @Excel(name = "建材类型")
    private String type;

    /** 标签 */
    @Excel(name = "标签")
    private String label;

    /** 价格（元） */
    @Excel(name = "价格", readConverterExp = "元=")
    private String price;

    /** 单位 */
    @Excel(name = "单位")
    private String unit;

    /** 商家 */
    @Excel(name = "商家")
    private Long materialStoreId;

    /** 首页展示 */
    @Excel(name = "首页展示")
    private Long status;

    /** 商品详情 */
    private String detail;
    
    private List<ZxMaterialImg> zxMaterialImgs;
    
    public List<ZxMaterialImg> getZxMaterialImgs() {
		return zxMaterialImgs;
	}

	public void setZxMaterialImgs(List<ZxMaterialImg> zxMaterialImgs) {
		this.zxMaterialImgs = zxMaterialImgs;
	}

	private ZxMaterialStore zxMaterialStore;

    public ZxMaterialStore getZxMaterialStore() {
		return zxMaterialStore;
	}

	public void setZxMaterialStore(ZxMaterialStore zxMaterialStore) {
		this.zxMaterialStore = zxMaterialStore;
	}

	public void setMaterialId(Long materialId) 
    {
        this.materialId = materialId;
    }

    public Long getMaterialId() 
    {
        return materialId;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setImgUrl(String imgUrl) 
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() 
    {
        return imgUrl;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setLabel(String label) 
    {
        this.label = label;
    }

    public String getLabel() 
    {
        return label;
    }
    public void setPrice(String price) 
    {
        this.price = price;
    }

    public String getPrice() 
    {
        return price;
    }
    public void setUnit(String unit) 
    {
        this.unit = unit;
    }

    public String getUnit() 
    {
        return unit;
    }
    public void setMaterialStoreId(Long materialStoreId) 
    {
        this.materialStoreId = materialStoreId;
    }

    public Long getMaterialStoreId() 
    {
        return materialStoreId;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
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
            .append("materialId", getMaterialId())
            .append("title", getTitle())
            .append("imgUrl", getImgUrl())
            .append("type", getType())
            .append("label", getLabel())
            .append("price", getPrice())
            .append("unit", getUnit())
            .append("materialStoreId", getMaterialStoreId())
            .append("status", getStatus())
            .append("detail", getDetail())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
