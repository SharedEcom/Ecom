package com.example.models;

public class OrderContents { //This is a dummy class which is used to display the info in the cards when you click on My orders in the FrontEnd
	private Orders order;
	private Shippers shipper;
	private Payments payment;

	public OrderContents() {
	}

	public OrderContents(Orders order, Shippers shipper, Payments payment) {
		this.order = order;
		this.shipper = shipper;
		this.payment = payment;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}

	public Shippers getShipper() {
		return shipper;
	}

	public void setShipper(Shippers shipper) {
		this.shipper = shipper;
	}

	public Payments getPayment() {
		return payment;
	}

	public void setPayment(Payments payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "OrderContents [order=" + order + ", shipper=" + shipper + ", payment=" + payment + "]";
	}

}
