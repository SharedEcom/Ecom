package com.example.ecom;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="customers")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer customerId;
	private String firstName;
	private String lastName;
	private String flatNumber;
	private String customerBuilding;
	private String customerAddress;
	private String customerCity;
	private String customerState;
	private Integer postalCode;
	private String customerCountry;
	private Double customerPhone;
	private String customerEmail;
	private String username;
	private String password;
	private String cardType;
	private Long cardNumber;
	private Integer cardMonth;
	private Integer cardYear;
	private String shippingAddress;
	private String shippingCity;
	private String shippingState;
	private Integer shippingCode;
	private String shippingCountry;
	
	
	public Customer() {
	}


	public Customer(Integer customerId, String firstName, String lastName, String flatNumber, String customerBuilding,
			String customerAddress, String customerCity, String customerState, Integer postalCode,
			String customerCountry, Double customerPhone, String customerEmail, String username, String password,
			String cardType, Long cardNumber, Integer cardMonth, Integer cardYear, String shippingAddress,
			String shippingCity, String shippingState, Integer shippingCode, String shippingCountry) {
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.flatNumber = flatNumber;
		this.customerBuilding = customerBuilding;
		this.customerAddress = customerAddress;
		this.customerCity = customerCity;
		this.customerState = customerState;
		this.postalCode = postalCode;
		this.customerCountry = customerCountry;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.username = username;
		this.password = password;
		this.cardType = cardType;
		this.cardNumber = cardNumber;
		this.cardMonth = cardMonth;
		this.cardYear = cardYear;
		this.shippingAddress = shippingAddress;
		this.shippingCity = shippingCity;
		this.shippingState = shippingState;
		this.shippingCode = shippingCode;
		this.shippingCountry = shippingCountry;
	}


	public Integer getCustomerId() {
		return customerId;
	}


	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getFlatNumber() {
		return flatNumber;
	}


	public void setFlatNumber(String flatNumber) {
		this.flatNumber = flatNumber;
	}


	public String getCustomerBuilding() {
		return customerBuilding;
	}


	public void setCustomerBuilding(String customerBuilding) {
		this.customerBuilding = customerBuilding;
	}


	public String getCustomerAddress() {
		return customerAddress;
	}


	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}


	public String getCustomerCity() {
		return customerCity;
	}


	public void setCustomerCity(String customerCity) {
		this.customerCity = customerCity;
	}


	public String getCustomerState() {
		return customerState;
	}


	public void setCustomerState(String customerState) {
		this.customerState = customerState;
	}


	public Integer getPostalCode() {
		return postalCode;
	}


	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}


	public String getCustomerCountry() {
		return customerCountry;
	}


	public void setCustomerCountry(String customerCountry) {
		this.customerCountry = customerCountry;
	}


	public Double getCustomerPhone() {
		return customerPhone;
	}


	public void setCustomerPhone(Double customerPhone) {
		this.customerPhone = customerPhone;
	}


	public String getCustomerEmail() {
		return customerEmail;
	}


	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getCardType() {
		return cardType;
	}


	public void setCardType(String cardType) {
		this.cardType = cardType;
	}


	public Long getCardNumber() {
		return cardNumber;
	}


	public void setCardNumber(Long cardNumber) {
		this.cardNumber = cardNumber;
	}


	public Integer getCardMonth() {
		return cardMonth;
	}


	public void setCardMonth(Integer cardMonth) {
		this.cardMonth = cardMonth;
	}


	public Integer getCardYear() {
		return cardYear;
	}


	public void setCardYear(Integer cardYear) {
		this.cardYear = cardYear;
	}


	public String getShippingAddress() {
		return shippingAddress;
	}


	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}


	public String getShippingCity() {
		return shippingCity;
	}


	public void setShippingCity(String shippingCity) {
		this.shippingCity = shippingCity;
	}


	public String getShippingState() {
		return shippingState;
	}


	public void setShippingState(String shippingState) {
		this.shippingState = shippingState;
	}


	public Integer getShippingCode() {
		return shippingCode;
	}


	public void setShippingCode(Integer shippingCode) {
		this.shippingCode = shippingCode;
	}


	public String getShippingCountry() {
		return shippingCountry;
	}


	public void setShippingCountry(String shippingCountry) {
		this.shippingCountry = shippingCountry;
	}


	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", flatNumber=" + flatNumber + ", customerBuilding=" + customerBuilding + ", customerAddress="
				+ customerAddress + ", customerCity=" + customerCity + ", customerState=" + customerState
				+ ", postalCode=" + postalCode + ", customerCountry=" + customerCountry + ", customerPhone="
				+ customerPhone + ", customerEmail=" + customerEmail + ", username=" + username + ", password="
				+ password + ", cardType=" + cardType + ", cardNumber=" + cardNumber + ", cardMonth=" + cardMonth
				+ ", cardYear=" + cardYear + ", shippingAddress=" + shippingAddress + ", shippingCity=" + shippingCity
				+ ", shippingState=" + shippingState + ", shippingCode=" + shippingCode + ", shippingCountry="
				+ shippingCountry + "]";
	}


	
	
	
}
