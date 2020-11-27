package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "payments")
public class Payments {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer paymentId;
	String paymentType;
	Integer isAllowed;

	public Payments() {
	}

	public Payments(Integer paymentId, String paymentType, Integer isAllowed) {
		this.paymentId = paymentId;
		this.paymentType = paymentType;
		this.isAllowed = isAllowed;
	}

	public Integer getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public Integer getIsAllowed() {
		return isAllowed;
	}

	public void setIsAllowed(Integer isAllowed) {
		this.isAllowed = isAllowed;
	}

	@Override
	public String toString() {
		return "Payments [paymentId=" + paymentId + ", paymentType=" + paymentType + ", isAllowed=" + isAllowed + "]";
	}

}
