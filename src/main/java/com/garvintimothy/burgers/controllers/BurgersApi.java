package com.garvintimothy.burgers.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.garvintimothy.burgers.models.Burger;
import com.garvintimothy.burgers.services.BurgerService;

@RestController
public class BurgersApi {
	private final BurgerService burgerService;
	public BurgersApi(BurgerService burgerService) {
		this.burgerService = burgerService;
	}
	@RequestMapping("/api/burgers")
	public List<Burger> index(){
		return burgerService.allBurgers();
	}
	@RequestMapping(value="/api/burgers", method=RequestMethod.POST)
	public Burger create(
	@RequestParam(value="name") String name,
	@RequestParam(value="resturaunt") String resturaunt,
	@RequestParam(value="rating") Integer rating,
	@RequestParam(value="notes") String notes) {
		Burger burger = new Burger(name, resturaunt, rating, notes);
		return burgerService.createBurger(burger);
	}
	@RequestMapping("/api/burgers/{id}")
	public Burger show(@PathVariable("id") Long id) {
		Burger burger = burgerService.findBurger(id);
		return burger;
	}
}
