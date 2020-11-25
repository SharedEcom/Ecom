package com.example.ecom;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.controllers.AuthController;
import com.example.controllers.CartController;
import com.example.controllers.CategoryController;
import com.example.controllers.ProductController;
import com.example.controllers.ProductDetailsController;

@SpringBootApplication
@ComponentScan(basePackageClasses = { AuthController.class, CategoryController.class, ProductController.class,
		ProductDetailsController.class, CartController.class })
@EntityScan("com.example.models")
@EnableJpaRepositories("com.example.repositories")
public class EcomApplication {
	public static void main(String[] args) {
		SpringApplication.run(EcomApplication.class, args);
	}
}