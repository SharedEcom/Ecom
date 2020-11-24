package com.example.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {

	Customer findByUsernameAndPassword(String username,String password);
	Customer findByUsername(String username);
}
