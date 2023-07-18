package com.garvintimothy.burgers.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.garvintimothy.burgers.models.Burger;
import com.garvintimothy.burgers.repositories.BurgerRepository;

@Service
public class BurgerService {
	private final BurgerRepository burgerRepository;
	
	public BurgerService(BurgerRepository burgerRepository) {
		this.burgerRepository = burgerRepository;
	}
	
	public List<Burger> allBurgers(){
		return burgerRepository.findAll();
	}
	public Burger createBurger(Burger b) {
		return burgerRepository.save(b);
	}
	public Burger updateBurger(Burger b) {
		return burgerRepository.save(b);
	}
	public Burger findBurger(Long id) {
		Optional<Burger> optionalBurger = burgerRepository.findById(id);
			if(optionalBurger.isPresent()) {
				return optionalBurger.get();
			} else {
				return null;
			}
			
		}
	
	public List<Burger> burgersContaining(String search){
		return burgerRepository.findByNameContaining(search);
	}
	public Burger deleteBurger(Long id) {
		burgerRepository.deleteById(id);
		return null;
	}
}

