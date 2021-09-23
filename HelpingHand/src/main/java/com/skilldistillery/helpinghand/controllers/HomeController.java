package com.skilldistillery.helpinghand.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.helpinghand.data.UserDAO;

@Controller
public class HomeController {
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home() {
	
		return "home";
	}

}