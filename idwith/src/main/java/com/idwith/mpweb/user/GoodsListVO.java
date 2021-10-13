package com.idwith.mpweb.user;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name = "goodsListVO")
@XmlAccessorType(XmlAccessType.FIELD)
public class GoodsListVO {
	@XmlElement(name = "goodsVO")
	private List<GoodsVO> goodsList;
	
	public GoodsListVO(){}

	public List<GoodsVO> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<GoodsVO> goodsList) {
		this.goodsList = goodsList;
	}
	
	
}