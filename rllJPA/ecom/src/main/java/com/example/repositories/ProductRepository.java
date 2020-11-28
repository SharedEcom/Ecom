package com.example.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.models.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {
	List<Product> findByCategoryId(Integer categoryId);

	@Query("SELECT prod FROM products prod WHERE "
			+ "lower(prod.productBrand) LIKE lower(CONCAT('%', :keyword, '%')) OR "
			+ "lower(prod.productDescription) LIKE lower(CONCAT('%', :keyword, '%')) OR "
			+ "lower(prod.productName) LIKE lower(CONCAT('%', :keyword, '%'))")
	List<Product> searchProducts(@Param("keyword") String keyword);
}
