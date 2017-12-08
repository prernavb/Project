package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	public HomeController() {
		System.out.println("HomeController is instantiated");
	}

	@RequestMapping(value ={ "/","/home"})
	public String homePage() {
		return "home";// logical view name
	}

	@RequestMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}
	
	//for logout---> /login?logout
	//for invalid credentials---> /login?error
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			// it shows an error message if user enter invalid credentials
			model.addObject("message", "Invalid username and password!");
		}

		if (logout != null) {
			// shows message if user is being logout
			model.addObject("message", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
	
}
