package com.example.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.models.OrderDetails;

public interface OrderDetailsRepository extends CrudRepository<OrderDetails, Integer> {
	
	List<OrderDetails> findByOrderId(Integer orderId);

}
