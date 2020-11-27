package com.example.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Payments;

public interface PaymentsRepository extends CrudRepository<Payments, Integer> {

}
