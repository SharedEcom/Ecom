package com.example.controllers;

import java.util.ArrayList;
import java.util.List;

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

import com.example.models.ProductDetails;
import com.example.models.Status;
import com.example.repositories.ProductDetailsRepository;

@RestController
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class ProductDetailsController {

	@Autowired
	private ProductDetailsRepository productDetailsRepository;

	@GetMapping("/productDetails/all")
	public List<ProductDetails> viewAllProductDetails() {
		List<ProductDetails> productdetails = new ArrayList<ProductDetails>();
		Iterable<ProductDetails> iterable = productDetailsRepository.findAll();

		for (ProductDetails pd : iterable) {
			productdetails.add(pd);
		}
		return productdetails;
	}

	@PostMapping("/productDetails/add")
	public ProductDetails addProductDetails(@RequestBody ProductDetails productDetails) {
		try {
			ProductDetails db = productDetailsRepository.save(productDetails);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@DeleteMapping("/deleteProductDetails/{id}")
	public Status deleteProductDetails(@PathVariable Integer id) {
		try {
			productDetailsRepository.deleteById(id);
			return new Status(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new Status(false);
		}
	}

	@PutMapping("/productDetails/update")
	public ProductDetails updateProductDetails(@RequestBody ProductDetails productDetails) {
		try {
			ProductDetails db = productDetailsRepository.save(productDetails);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@GetMapping("productDetails/{productId}")
	public List<ProductDetails> getProductDetailsOfAProduct(@PathVariable Integer productId) {
		List<ProductDetails> productDetails = new ArrayList<ProductDetails>();
		Iterable<ProductDetails> iterable = productDetailsRepository.findByProductId(productId);
		for (ProductDetails pd : iterable) {
			productDetails.add(pd);
		}
		return productDetails;
	}

}
