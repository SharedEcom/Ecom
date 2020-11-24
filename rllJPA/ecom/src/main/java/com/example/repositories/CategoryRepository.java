package com.example.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
        Category findByCategoryId(Integer categoryId);
}
