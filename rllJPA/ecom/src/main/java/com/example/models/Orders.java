package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "orders")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer orderId;
	Integer customerId;
	Integer orderNumber;
	Integer paymentId;
	String orderDate;
	String shipDate;
	String deliveryDate;
	Integer shipperId;
	Double freight;
	String transStatus;
	Double invoiceAmount;
	Integer isFulfilled;
	Integer isDeleted;
	Integer isPaid;
	String paymentDate;

	public Orders() {
	}

	public Orders(Integer orderId, Integer customerId, Integer orderNumber, Integer paymentId, String orderDate,
			String shipDate, String deliveryDate, Integer shipperId, Double freight, String transStatus,
			Double invoiceAmount, Integer isFulfilled, Integer isDeleted, Integer isPaid, String paymentDate) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.orderNumber = orderNumber;
		this.paymentId = paymentId;
		this.orderDate = orderDate;
		this.shipDate = shipDate;
		this.deliveryDate = deliveryDate;
		this.shipperId = shipperId;
		this.freight = freight;
		this.transStatus = transStatus;
		this.invoiceAmount = invoiceAmount;
		this.isFulfilled = isFulfilled;
		this.isDeleted = isDeleted;
		this.isPaid = isPaid;
		this.paymentDate = paymentDate;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Integer getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getShipDate() {
		return shipDate;
	}

	public void setShipDate(String shipDate) {
		this.shipDate = shipDate;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public Integer getShipperId() {
		return shipperId;
	}

	public void setShipperId(Integer shipperId) {
		this.shipperId = shipperId;
	}

	public Double getFreight() {
		return freight;
	}

	public void setFreight(Double freight) {
		this.freight = freight;
	}

	public String getTransStatus() {
		return transStatus;
	}

	public void setTransStatus(String transStatus) {
		this.transStatus = transStatus;
	}

	public Double getInvoiceAmount() {
		return invoiceAmount;
	}

	public void setInvoiceAmount(Double invoiceAmount) {
		this.invoiceAmount = invoiceAmount;
	}

	public Integer getIsFulfilled() {
		return isFulfilled;
	}

	public void setIsFulfilled(Integer isFulfilled) {
		this.isFulfilled = isFulfilled;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getIsPaid() {
		return isPaid;
	}

	public void setIsPaid(Integer isPaid) {
		this.isPaid = isPaid;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", customerId=" + customerId + ", orderNumber=" + orderNumber
				+ ", paymentId=" + paymentId + ", orderDate=" + orderDate + ", shipDate=" + shipDate + ", deliveryDate="
				+ deliveryDate + ", shipperId=" + shipperId + ", freight=" + freight + ", transStatus=" + transStatus
				+ ", invoiceAmount=" + invoiceAmount + ", isFulfilled=" + isFulfilled + ", isDeleted=" + isDeleted
				+ ", isPaid=" + isPaid + ", paymentDate=" + paymentDate + "]";
	}

}