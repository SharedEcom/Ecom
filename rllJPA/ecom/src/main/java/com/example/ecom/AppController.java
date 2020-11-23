package com.example.ecom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;

@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.GET, RequestMethod.PUT, RequestMethod.DELETE, RequestMethod.POST })
public class AppController {

	
	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private HttpSession httpSession;

	public CustomerRepository getCustomerRepository() {
		return customerRepository;
	}

	public void setCustomerRepository(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
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
			customer = customerRepository.save(customer);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Inside catch");
			return null;
		}
		
		if (customer.getCustomerId()!=0) {
			
			System.out.println("Customer ID Valide");
			return customer;
			
		}
		
		System.out.println(customer.getCustomerId());
		System.out.println("Custome ID Invalid");
		return null;
	}
	
	
}

