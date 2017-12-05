package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDAO;
	@RequestMapping(value="/all/registrationform") 	
public    ModelAndView  getRegistrationForm(){
	return new ModelAndView("registration","user",new User());
}
@RequestMapping(value="/all/registercustomer")
public String registerUser(@Valid @ModelAttribute User user,BindingResult result,Model model){
		if(result.hasErrors())//hibernate validation
		return "registration";
		userDAO.registerUser(user);//valid 
		return "home";

}
}