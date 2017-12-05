package com.niit.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@RequestMapping("/admin")
@Controller
public class ProductController {
	@Autowired
	private ProductDao productdao;

	@RequestMapping(value = {"/editform/{id}"}, method= RequestMethod.GET)
	public String viewForm(@PathVariable int id,Model model)
	{
		System.out.println("id ; "+id);
		model.addAttribute("product", productdao.getProduct(id));
		return "productform";
	}

	@RequestMapping("/viewform")
	public String viewForm2( Model model)
	{
		
		model.addAttribute("product",new Product());
		return "productform";
	}
	
	
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	
	public String saveorUpdateProduct(HttpServletRequest request,@Valid @ModelAttribute(name="product")  Product product,BindingResult result,Model model) {//3
		
		
		productdao.saveOrUpdateProduct(product); //insert and update
    	
    	return "redirect:/admin/all";
    }
		
	@RequestMapping(value = "/all")
	public ModelAndView getAllProducts() {
		List<Product> products = productdao.getAllProducts();
		// productlist - logical view name [productlist.jsp]
		// products - model attribute [use this attribute in jsp]
		// products - List<Product> data
		return new ModelAndView("productlist", "productsAttr", products);
		// JSTL and EL
	}
	@RequestMapping(value = "/viewproduct/{id}")
	public ModelAndView getProduct(@PathVariable int id) {
		Product product=productdao.getProduct(id);
		return new ModelAndView("viewproduct", "product", product);
	}
	
	@RequestMapping(value="/deleteProduct/{id}")
	public String deleteProduct(HttpServletRequest request,@PathVariable int id){
		
		productdao.deleteProduct(id);
		return "redirect:/admin/all";
	}

	
	}