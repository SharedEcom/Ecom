package com.example.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.models.Suppliers;

public interface SuppliersRepository extends CrudRepository<Suppliers, Integer> {

}
