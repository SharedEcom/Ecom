package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "shippers")
public class Shippers {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer shipperId;
	String companyName;
	Double shipperContact;
	String contactPerson;

	public Shippers() {
	}

	public Shippers(Integer shipperId, String companyName, Double shipperContact, String contactPerson) {
		this.shipperId = shipperId;
		this.companyName = companyName;
		this.shipperContact = shipperContact;
		this.contactPerson = contactPerson;
	}

	public Integer getShipperId() {
		return shipperId;
	}

	public void setShipperId(Integer shipperId) {
		this.shipperId = shipperId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Double getShipperContact() {
		return shipperContact;
	}

	public void setShipperContact(Double shipperContact) {
		this.shipperContact = shipperContact;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	@Override
	public String toString() {
		return "Shipper [shipperId=" + shipperId + ", companyName=" + companyName + ", shipperContact=" + shipperContact
				+ ", contactPerson=" + contactPerson + "]";
	}

}
