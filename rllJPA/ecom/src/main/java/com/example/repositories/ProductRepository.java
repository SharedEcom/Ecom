package com.example.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {
 List<Product> findByCategoryId(Integer categoryId);
}
