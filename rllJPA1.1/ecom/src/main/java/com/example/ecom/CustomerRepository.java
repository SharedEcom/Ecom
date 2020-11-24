package com.example.ecom;

import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {

	Customer findByUsernameAndPassword(String username,String password);
	Customer findByUsername(String username);
}
