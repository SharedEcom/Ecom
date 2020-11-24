package com.example.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.models.ProductDetails;

public interface ProductDetailsRepository extends CrudRepository<ProductDetails, Integer> {
	List<ProductDetails> findByProductId(Integer productId);
}
