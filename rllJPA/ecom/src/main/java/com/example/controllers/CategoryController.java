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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.Category;
import com.example.models.Status;
import com.example.repositories.CategoryRepository;

@RestController
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class CategoryController {

	@Autowired
	private CategoryRepository categoryRepository;

	@GetMapping("/category/all")
	public List<Category> viewAllCategory() {

		List<Category> categories = new ArrayList<Category>();
		Iterable<Category> iterable = categoryRepository.findAll();

		for (Category category : iterable) {
			categories.add(category);
		}
		return categories;

	}

	@PostMapping("/category/add")
	public Category addCategory(@RequestBody Category category) {
		try {
			Category db = categoryRepository.save(category);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}

	}

	@GetMapping("/category/{id}")
	public Optional<Category> getCategory(@PathVariable Integer id) {
		try {
			return categoryRepository.findById(id);

		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@DeleteMapping("/deleteCategory/{id}")
	public Status deleteCategory(@PathVariable Integer id) {
		try {
			categoryRepository.deleteById(id);
			return new Status(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new Status(false);
		}
	}
}