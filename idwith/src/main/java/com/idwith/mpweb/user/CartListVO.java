package com.idwith.mpweb.user;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "cartListVO")
public class CartListVO {
	@XmlElement(name = "cartVO")
	private List<CartVO> cartList;

	public CartListVO() {}
	
	public List<CartVO> getCartList() {
		return cartList;
	}

	public void setCartList(List<CartVO> cartList) {
		this.cartList = cartList;
	}
	
	
}
