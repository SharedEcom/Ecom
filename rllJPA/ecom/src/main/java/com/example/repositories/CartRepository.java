package com.example.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer> {

	List<Cart> findByCustomerId(Integer customerId);

}
