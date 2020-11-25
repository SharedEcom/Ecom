package com.example.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer> {

}
