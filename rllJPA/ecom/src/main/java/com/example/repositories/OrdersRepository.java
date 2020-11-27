package com.example.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Orders;

public interface OrdersRepository extends CrudRepository<Orders, Integer> {

	List<Orders> findByCustomerId(Integer customerId);
}
