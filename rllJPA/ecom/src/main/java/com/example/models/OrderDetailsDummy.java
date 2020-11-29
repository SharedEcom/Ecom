package com.example.models;

public class OrderDetailsDummy { //This is a dummy class to display the order details when you click on a particular order in FrontEnd

	private OrderDetails orderDetails;
	private Product product;
	private Category category;
	private Suppliers supplier;

	public OrderDetailsDummy() {
	}

	public OrderDetailsDummy(OrderDetails orderDetails, Product product, Category category, Suppliers supplier) {
		this.orderDetails = orderDetails;
		this.product = product;
		this.category = category;
		this.supplier = supplier;
	}

	public OrderDetails getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(OrderDetails orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Suppliers getSupplier() {
		return supplier;
	}

	public void setSupplier(Suppliers supplier) {
		this.supplier = supplier;
	}

	@Override
	public String toString() {
		return "OrderDetailsDummy [orderDetails=" + orderDetails + ", product=" + product + ", category=" + category
				+ "]";
	}

}
