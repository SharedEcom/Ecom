package com.example.ecom;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Integer> {
 List<Product> findByCategoryId(Integer categoryId);
}
