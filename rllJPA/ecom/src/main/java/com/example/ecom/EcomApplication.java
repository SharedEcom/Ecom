package com.example.ecom;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.example.controllers.AuthController;
import com.example.controllers.CartController;
import com.example.controllers.CategoryController;
import com.example.controllers.OrderController;
import com.example.controllers.OrderDetailsController;
import com.example.controllers.ProductController;
import com.example.controllers.ProductDetailsController;

@SuppressWarnings("deprecation")
@SpringBootApplication
@ComponentScan(basePackageClasses = { AuthController.class, CategoryController.class, ProductController.class,
		ProductDetailsController.class, CartController.class, OrderController.class, OrderDetailsController.class })
@EntityScan("com.example.models")
@EnableJpaRepositories("com.example.repositories")
public class EcomApplication {
	public static void main(String[] args) {
		SpringApplication.run(EcomApplication.class, args);
	}

	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurerAdapter() {

			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/signin").allowedOrigins("http://localhost:4200");
				registry.addMapping("/signin").allowCredentials(true);

				registry.addMapping("/signup").allowedOrigins("http://localhost:4200");
				registry.addMapping("/signup").allowCredentials(true);

//				registry.addMapping("/posts/signout").allowedOrigins("http://localhost:4200");
//				registry.addMapping("/posts/signout").allowCredentials(true);

				registry.addMapping("/cart/add").allowedOrigins("http://localhost:4200");
				registry.addMapping("/cart/add").allowCredentials(true);
				
				registry.addMapping("/cart/all").allowedOrigins("http://localhost:4200");
				registry.addMapping("/cart/all").allowCredentials(true);
				
				registry.addMapping("/deleteCart/*").allowedOrigins("http://localhost:4200");
				registry.addMapping("/deleteCart/*").allowCredentials(true);

				registry.addMapping("/order/add").allowedOrigins("http://localhost:4200");
				registry.addMapping("/order/add").allowCredentials(true);
				
				registry.addMapping("/order/all").allowedOrigins("http://localhost:4200");
				registry.addMapping("/order/all").allowCredentials(true);
				
				registry.addMapping("/orderDetails/add").allowedOrigins("http://localhost:4200");
				registry.addMapping("/orderDetails/add").allowCredentials(true);
				
				registry.addMapping("/orderDetails/*").allowedOrigins("http://localhost:4200");
				registry.addMapping("/orderDetails/*").allowCredentials(true);
				
				registry.addMapping("/product/update").allowedOrigins("http://localhost:4200");
				registry.addMapping("/product/update").allowCredentials(true);
			}
		};
	}
}