package com.example.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.models.Customer;
import com.example.models.Status;
import com.example.repositories.CustomerRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200", methods = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE,
		RequestMethod.POST })
public class AuthController {

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private HttpSession httpSession;

	@PostMapping("/signin") //RESTAPI Call For SignIn of a Customer
	public Customer signIn(@RequestBody Customer customer) {
		Customer dbCustomer = customerRepository.findByUsernameAndPassword(customer.getUsername(),
				customer.getPassword());

		if (dbCustomer != null && dbCustomer.getUsername().equals(customer.getUsername())
				&& dbCustomer.getPassword().equals(customer.getPassword())) {
			httpSession.setAttribute("customerId", dbCustomer.getCustomerId());//Setting the customerId in the session
			return dbCustomer;
		}
		return null;
	}

	@PostMapping("/signup")//RESTAPI Call For Registering a new customer
	public Customer signUp(@RequestBody Customer customer) {
		try {
			Customer db = customerRepository.save(customer);
			return db;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Inside catch");
			return null;
		}
	}

	@GetMapping("/validate/{username}")//RestAPI call to check if the username already exists in the database
	public Status validateUsername(@PathVariable String username) {

		Customer db = customerRepository.findByUsername(username);
		if (db != null) {
			return new Status(true);
		}

		else {
			return new Status(false);
		}
	}

	@PostMapping("/signout")//RestAPI call to Logout 
	public Status logout() {

		if (httpSession != null && httpSession.getAttribute("customerId") != null) {
			httpSession.invalidate();
			return new Status(true);
		}
		return new Status(false);
	}

	@PutMapping("/updateProfile")
	public Customer updateProfile(@RequestBody Customer customer) {
		if (httpSession.getAttribute("customerId") == null) {
			return null;
		} else {
			try {
				Customer db = customerRepository.save(customer);
				return db;
			} catch (Exception e) {
				return null;
			}
		}
	}

}