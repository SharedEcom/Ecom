package com.example.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

import com.example.models.Product;
import com.example.models.Status;
import com.example.repositories.ProductRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class ProductController {

	@Autowired
	private ProductRepository productRepository;

	@GetMapping("/product/all")
	public List<Product> viewAllProducts() {
		List<Product> products = new ArrayList<Product>();
		Iterable<Product> iterable = productRepository.findAll();

		for (Product product : iterable) {
			products.add(product);
		}
		return products;
	}

	@PostMapping("/product/add")
	public Product addProduct(@RequestBody Product product) {
		try {
			Product db = productRepository.save(product);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@GetMapping("/product/{id}")
	public Optional<Product> getProduct(@PathVariable Integer id) {
		try {
			return productRepository.findById(id);

		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@DeleteMapping("/deleteProduct/{id}")
	public Status deleteProduct(@PathVariable Integer id) {
		try {
			productRepository.deleteById(id);
			return new Status(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new Status(false);
		}
	}

	@PutMapping("/product/update")
	public Product updateProduct(@RequestBody Product product) {
		try {
			Product db = productRepository.save(product);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@GetMapping("/product/category/{categoryId}")
	public List<Product> getProductsOfACategory(@PathVariable Integer categoryId) {
		List<Product> products = new ArrayList<Product>();
		Iterable<Product> iterable = productRepository.findByCategoryId(categoryId);
		for (Product product : iterable) {
			products.add(product);
		}
		return products;
	}

}