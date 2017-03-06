package com.niit.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Controller
public class CategoryController {
	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	Logger log = LoggerFactory.getLogger(CategoryController.class); // logger and loggerfactory class declared for this class
	
	// ---------------------------------category----------------------------------------------------//
	@RequestMapping(value = "/category", method = RequestMethod.GET) // mapping for "/category"																		
	public ModelAndView categoryPage() {
		log.debug("inside category controller"); // performing a logger debug
		ModelAndView model = new ModelAndView("category", "category", new Category()); // adding a page to ModelAndView with empty constructor
		//model.addObject("list", categoryDAO.getCategoryList()); // adding a object to value list
		 ArrayList<Category> list=(ArrayList<Category>)categoryDAO.getCategoryList();
	  		Gson gson= new Gson();
	  		model.addObject	 ("list",gson.toJson(list));
        log.debug("end of category controller method");
		return model;
	}

	// ---------------------------------addcategory--------------------------------------------------//
	@RequestMapping(value = "/addcategory", method = RequestMethod.GET) // mapping for "/addcategory"
	public String addCategory(Category category) {
		log.debug("inside addcategory Controller");
		categoryDAO.addCategory(category);
		return "redirect:/category";
	}

	// ---------------------------------deletecategory-------------------------------------------------//
	@RequestMapping(value = "/deletecategory", method = RequestMethod.GET) // mapping for "/deletecategory"
	public String deleteCategory(@RequestParam("categoryId") String categoryId) {
		System.out.println("hiii");
		log.debug("inside deletecategory Controller");
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/category";

	}

	// ---------------------------------editcategory------------------------------------------------------------//
	@RequestMapping(value = "/editcategory", method = RequestMethod.GET) // mapping for "/editcategory"
	public ModelAndView editCategory(@RequestParam("categoryId") String categoryId) {
		ModelAndView model = new ModelAndView("category", "category", new Category());
		log.debug("inside editcategory Controller");
		model.addObject("list", categoryDAO.getCategoryList());
		model.addObject("values", categoryDAO.getById(categoryId));
		return model;
	}

}
