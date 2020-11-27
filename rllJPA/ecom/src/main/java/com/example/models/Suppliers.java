package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "suppliers")
public class Suppliers {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer supplierId;
	String companyName;
	String contactFirstName;
	String contactLastName;
	String contactTitle;
	String address;
	String city;
	String state;
	Integer postalCode;
	String country;
	Double phone;
	String email;
	String paymentMethods;
	String discountType;
	Integer discountAvailable;
	String logoUrl;

	public Suppliers() {
	}

	public Suppliers(Integer supplierId, String companyName, String contactFirstName, String contactLastName,
			String contactTitle, String address, String city, String state, Integer postalCode, String country,
			Double phone, String email, String paymentMethods, String discountType, Integer discountAvailable,
			String logoUrl) {
		this.supplierId = supplierId;
		this.companyName = companyName;
		this.contactFirstName = contactFirstName;
		this.contactLastName = contactLastName;
		this.contactTitle = contactTitle;
		this.address = address;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
		this.country = country;
		this.phone = phone;
		this.email = email;
		this.paymentMethods = paymentMethods;
		this.discountType = discountType;
		this.discountAvailable = discountAvailable;
		this.logoUrl = logoUrl;
	}

	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getContactFirstName() {
		return contactFirstName;
	}

	public void setContactFirstName(String contactFirstName) {
		this.contactFirstName = contactFirstName;
	}

	public String getContactLastName() {
		return contactLastName;
	}

	public void setContactLastName(String contactLastName) {
		this.contactLastName = contactLastName;
	}

	public String getContactTitle() {
		return contactTitle;
	}

	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Double getPhone() {
		return phone;
	}

	public void setPhone(Double phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPaymentMethods() {
		return paymentMethods;
	}

	public void setPaymentMethods(String paymentMethods) {
		this.paymentMethods = paymentMethods;
	}

	public String getDiscountType() {
		return discountType;
	}

	public void setDiscountType(String discountType) {
		this.discountType = discountType;
	}

	public Integer getDiscountAvailable() {
		return discountAvailable;
	}

	public void setDiscountAvailable(Integer discountAvailable) {
		this.discountAvailable = discountAvailable;
	}

	public String getLogoUrl() {
		return logoUrl;
	}

	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	@Override
	public String toString() {
		return "Suppliers [supplierId=" + supplierId + ", companyName=" + companyName + ", contactFirstName="
				+ contactFirstName + ", contactLastName=" + contactLastName + ", contactTitle=" + contactTitle
				+ ", address=" + address + ", city=" + city + ", state=" + state + ", postalCode=" + postalCode
				+ ", country=" + country + ", phone=" + phone + ", email=" + email + ", paymentMethods="
				+ paymentMethods + ", discountType=" + discountType + ", discountAvailable=" + discountAvailable
				+ ", logoUrl=" + logoUrl + "]";
	}

}
