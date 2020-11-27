package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "order_details")
public class OrderDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer orderDetailId;
	Integer orderId;
	Integer productId;
	Double price;
	Double igstRate;
	Double igstAmount;
	Double cgstRate;
	Double cgstAmount;
	Double sgstRate;
	Double sgstAmount;
	Double cessRate;
	Double cessAmount;
	Integer unitQty;
	Double discount;
	Double total;
	Integer isFulfilled;
	String shipDate;
	String billDate;
	String deliveryDate;
	
	public OrderDetails() {
	}

	public OrderDetails(Integer orderDetailId, Integer orderId, Integer productId, Double price, Double igstRate,
			Double igstAmount, Double cgstRate, Double cgstAmount, Double sgstRate, Double sgstAmount, Double cessRate,
			Double cessAmount, Integer unitQty, Double discount, Double total, Integer isFulfilled, String shipDate,
			String billDate, String deliveryDate) {
		this.orderDetailId = orderDetailId;
		this.orderId = orderId;
		this.productId = productId;
		this.price = price;
		this.igstRate = igstRate;
		this.igstAmount = igstAmount;
		this.cgstRate = cgstRate;
		this.cgstAmount = cgstAmount;
		this.sgstRate = sgstRate;
		this.sgstAmount = sgstAmount;
		this.cessRate = cessRate;
		this.cessAmount = cessAmount;
		this.unitQty = unitQty;
		this.discount = discount;
		this.total = total;
		this.isFulfilled = isFulfilled;
		this.shipDate = shipDate;
		this.billDate = billDate;
		this.deliveryDate = deliveryDate;
	}

	public Integer getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getIgstRate() {
		return igstRate;
	}

	public void setIgstRate(Double igstRate) {
		this.igstRate = igstRate;
	}

	public Double getIgstAmount() {
		return igstAmount;
	}

	public void setIgstAmount(Double igstAmount) {
		this.igstAmount = igstAmount;
	}

	public Double getCgstRate() {
		return cgstRate;
	}

	public void setCgstRate(Double cgstRate) {
		this.cgstRate = cgstRate;
	}

	public Double getCgstAmount() {
		return cgstAmount;
	}

	public void setCgstAmount(Double cgstAmount) {
		this.cgstAmount = cgstAmount;
	}

	public Double getSgstRate() {
		return sgstRate;
	}

	public void setSgstRate(Double sgstRate) {
		this.sgstRate = sgstRate;
	}

	public Double getSgstAmount() {
		return sgstAmount;
	}

	public void setSgstAmount(Double sgstAmount) {
		this.sgstAmount = sgstAmount;
	}

	public Double getCessRate() {
		return cessRate;
	}

	public void setCessRate(Double cessRate) {
		this.cessRate = cessRate;
	}

	public Double getCessAmount() {
		return cessAmount;
	}

	public void setCessAmount(Double cessAmount) {
		this.cessAmount = cessAmount;
	}

	public Integer getUnitQty() {
		return unitQty;
	}

	public void setUnitQty(Integer unitQty) {
		this.unitQty = unitQty;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Integer getIsFulfilled() {
		return isFulfilled;
	}

	public void setIsFulfilled(Integer isFulfilled) {
		this.isFulfilled = isFulfilled;
	}

	public String getShipDate() {
		return shipDate;
	}

	public void setShipDate(String shipDate) {
		this.shipDate = shipDate;
	}

	public String getBillDate() {
		return billDate;
	}

	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	@Override
	public String toString() {
		return "OrderDetails [orderDetailId=" + orderDetailId + ", orderId=" + orderId + ", productId=" + productId
				+ ", price=" + price + ", igstRate=" + igstRate + ", igstAmount=" + igstAmount + ", cgstRate="
				+ cgstRate + ", cgstAmount=" + cgstAmount + ", sgstRate=" + sgstRate + ", sgstAmount=" + sgstAmount
				+ ", cessRate=" + cessRate + ", cessAmount=" + cessAmount + ", unitQty=" + unitQty + ", discount="
				+ discount + ", total=" + total + ", isFulfilled=" + isFulfilled + ", shipDate=" + shipDate
				+ ", billDate=" + billDate + ", deliveryDate=" + deliveryDate + "]";
	}
	
	
	
}
