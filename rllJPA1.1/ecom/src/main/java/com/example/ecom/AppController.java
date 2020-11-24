package com.example.ecom;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;

@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE, RequestMethod.POST })
public class AppController {

	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private HttpSession httpSession;

	public CustomerRepository getCustomerRepository() {
		return customerRepository;
	}

	public void setCustomerRepository(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
	
	public CategoryRepository getCategoryRepository() {
		return categoryRepository;
	}

	public void setCategoryRepository(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	
	
	public ProductRepository getProductRepository() {
		return productRepository;
	}

	public void setProductRepository(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	public boolean validate() {
		return (httpSession.getAttribute("customerId") == null) ? false : true;
	}
	
	
	@PostMapping("/signin")
	public Customer signIn(@RequestBody Customer customer) {
		Customer dbCustomer = customerRepository.findByUsernameAndPassword(customer.getUsername(),customer.getPassword());

		if (dbCustomer != null && dbCustomer.getUsername().equals(customer.getUsername())
				&& dbCustomer.getPassword().equals(customer.getPassword())) {
			httpSession.setAttribute("customerId", dbCustomer.getCustomerId());
			return dbCustomer;
		}
		return null;
	}
	
	
	@PostMapping("/signup")
	public Customer signUp(@RequestBody Customer customer) {
		try {
			Customer db = customerRepository.save(customer);
			return db;
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Inside catch");
			return null;
		}
		
		
	}
	
	
	@GetMapping("/validate/{username}")
	public Status validateUsername(@PathVariable String username) {
		
			Customer db=customerRepository.findByUsername(username);
			System.out.println(db);
			if(db!=null) {
			return new Status(true);
			}
			
			else {
				return new Status(false);
			}
		
	}
	
	
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
		 Category db=categoryRepository.save(category);
		 return db;
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return null;
		}
		
		
		
	}
	
	
	@GetMapping("/category/{id}")
	public Optional<Category> getCategory(@PathVariable Integer id) {
		try {
			return categoryRepository.findById(id);
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	
	
	@DeleteMapping("/deleteCategory/{id}")
	public Status deleteCategory(@PathVariable Integer id) {
		try {
		categoryRepository.deleteById(id);
		return new Status(true);
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return new Status(false);
		}
	}
	
	
	@GetMapping("/product/all")
	public List<Product> viewAllProducts() {
		List<Product> products = new ArrayList<Product>();
		Iterable<Product> iterable = productRepository.findAll();
		
		for (Product product : iterable) {
			products.add(product);
		}
		return products;
	}
	
	@PostMapping("/product/add")
	public Product addProduct(@RequestBody Product product) {
		try {
			Product db=productRepository.save(product);
		 return db;
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	
	@GetMapping("/product/{id}")
	public Optional<Product> getProduct(@PathVariable Integer id) {
		try {
			return productRepository.findById(id);
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@DeleteMapping("/deleteProduct/{id}")
	public Status deleteProduct(@PathVariable Integer id) {
		try {
		productRepository.deleteById(id);
		return new Status(true);
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return new Status(false);
		}
	}
	
	@PutMapping("/product/update")
	public Product updateProduct(@RequestBody Product product) {
	try {
		Product db=productRepository.save(product);
		 return db;
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	
	@GetMapping("product/category/{categoryId}")
	public List<Product> getProductsOfACategory(@PathVariable Integer categoryId) {
		List<Product> products = new ArrayList<Product>();
		Iterable<Product> iterable = productRepository.findByCategoryId(categoryId);
		for (Product product : iterable) {
			products.add(product);
		}
		return products;
	}
	
	
}

