package com.example.models;

public class CartProduct { //This is a dummy class which is used to display the cart contents in the frontend 

	private Cart cart;
	private Product product;
	private Category category;

	public CartProduct() {
		// TODO Auto-generated constructor stub
	}

	public CartProduct(Cart cart, Product product, Category category) {
		super();
		this.cart = cart;
		this.product = product;
		this.category = category;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
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

	@Override
	public String toString() {
		return "CartProduct [cart=" + cart + ", product=" + product + ", category=" + category + "]";
	}

}