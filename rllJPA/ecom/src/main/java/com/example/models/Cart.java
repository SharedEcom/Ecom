package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer cartId;
	private Integer customerId;
	private Integer productId;
	private Integer cartUid;
	private Integer cartQty;
	private Double cartTotal;
	private String expShipDate;
	private String expBillDate;
	private String expDeliveryDate;
	private String createdOn;

	public Cart() {

	}

	public Cart(Integer cartId, Integer customerId, Integer productId, Integer cartUid, Integer cartQty,
			Double cartTotal, String expShipDate, String expBillDate, String expDeliveryDate, String createdOn) {
		super();
		this.cartId = cartId;
		this.customerId = customerId;
		this.productId = productId;
		this.cartUid = cartUid;
		this.cartQty = cartQty;
		this.cartTotal = cartTotal;
		this.expShipDate = expShipDate;
		this.expBillDate = expBillDate;
		this.expDeliveryDate = expDeliveryDate;
		this.createdOn = createdOn;
	}

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getCartUid() {
		return cartUid;
	}

	public void setCartUid(Integer cartUid) {
		this.cartUid = cartUid;
	}

	public Integer getCartQty() {
		return cartQty;
	}

	public void setCartQty(Integer cartQty) {
		this.cartQty = cartQty;
	}

	public Double getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(Double cartTotal) {
		this.cartTotal = cartTotal;
	}

	public String getExpShipDate() {
		return expShipDate;
	}

	public void setExpShipDate(String expShipDate) {
		this.expShipDate = expShipDate;
	}

	public String getExpBillDate() {
		return expBillDate;
	}

	public void setExpBillDate(String expBillDate) {
		this.expBillDate = expBillDate;
	}

	public String getExpDeliveryDate() {
		return expDeliveryDate;
	}

	public void setExpDeliveryDate(String expDeliveryDate) {
		this.expDeliveryDate = expDeliveryDate;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", customerId=" + customerId + ", productId=" + productId + ", cartUid="
				+ cartUid + ", cartQty=" + cartQty + ", cartTotal=" + cartTotal + ", expShipDate=" + expShipDate
				+ ", expBillDate=" + expBillDate + ", expDeliveryDate=" + expDeliveryDate + ", createdOn=" + createdOn
				+ "]";
	}

}