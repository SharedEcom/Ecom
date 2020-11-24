package com.example.ecom;

import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
        Category findByCategoryId(Integer categoryId);
}
