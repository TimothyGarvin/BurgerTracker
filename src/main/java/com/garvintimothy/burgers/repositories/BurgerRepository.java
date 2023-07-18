package com.garvintimothy.burgers.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.garvintimothy.burgers.models.Burger;

@Repository
public interface BurgerRepository extends CrudRepository<Burger, Long>{
	 List<Burger> findAll();
	 
	 List<Burger> findByNameContaining(String search);
}
