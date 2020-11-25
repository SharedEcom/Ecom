package com.example.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.Cart;
import com.example.models.Product;
import com.example.models.Status;
import com.example.repositories.CartRepository;

@RestController
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class CartController {


	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private HttpSession httpSession;
	
	public boolean validate() {
		return (httpSession.getAttribute("customerId") == null) ? false : true; 
	}
	
	@PostMapping("/cart/add")
	public Cart addToCart(@RequestBody Cart cart) {
		if (!validate()) {
			return null;
		} else {
			try {
				Cart db = cartRepository.save(cart);
				return db;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}
	
	
	@PutMapping("/cart/update")
	public Cart updateCart(@RequestBody Cart cart) {
		if (!validate()) {
			return null;
		} else {
			try {
				Cart db = cartRepository.save(cart);
				return db;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}

	}
	
	
	
	@GetMapping("/cart/all")
	public List<Cart> viewAllCartContents() {
		if (!validate()) {
			return null;
		} else {
			List<Cart> carts = new ArrayList<Cart>();
			Iterable<Cart> iterable = cartRepository.findAll();

			for (Cart cart : iterable) {
				carts.add(cart);
			}
			return carts;
		}
	}
	
	
	@DeleteMapping("/deleteCart/{id}")
	public Status deleteProduct(@PathVariable Integer id) {
		if (!validate()) {
			return null;
		} else {
			try {
				cartRepository.deleteById(id);
				return new Status(true);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return new Status(false);
			}
		}
	}
	
	
	@GetMapping("/cart/{id}")
	public Optional<Cart> getCart(@PathVariable Integer id) {
		if (!validate()) {
			return null;
		} else {
			try {
				return cartRepository.findById(id);

			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}
	}
	
	
	
	
	
	
	
}
	
	
	
	
	

