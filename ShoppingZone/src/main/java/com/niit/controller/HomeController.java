package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.daoimpl.UserDAOImpl;
import com.niit.model.User;

@Controller
public class HomeController {

	// @Autowired(required=true)
	 //private UserDAO userDao;

	 //@Autowired(required=true)
	//private User user;
	Logger log = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/admin") // mapping for admin page
	public ModelAndView adminPage() {
		log.debug("inside admin page");
		ModelAndView model = new ModelAndView("admin");
		return model;
	}

	@RequestMapping(value = "/register") // mapping for register page
	public ModelAndView registerPage() {
		log.debug("inside register page");
		ModelAndView model = new ModelAndView("register", "user", new User());
		return model;
	}

	@RequestMapping(value = "/delete") // mapping for delete page
	public ModelAndView deletePage() {
		log.debug("inside delete page");
		ModelAndView model = new ModelAndView("delete", "user", new User());
		return model;

	}

	// --------------------------------------delete-----------------------------------------------------------//
	@RequestMapping("/deletesuccess")
	public String deletesuccess(@RequestParam("userName") String username, @RequestParam("password") String password,
			Model m) {
		UserDAO userDAO = new UserDAOImpl();
		m.addAttribute("msg", "Deleted");
		userDAO.userDelete(username, password);
		return "deletesuccess";

	}

	@RequestMapping(value = "/login") // mapping for login page
	public ModelAndView loginPage() {
		log.debug("inside login page");
		ModelAndView model = new ModelAndView("login", "user", new User());
		return model;

	}

	@RequestMapping(value = "/index") // mapping index page
	public ModelAndView indexPage() {
		log.debug("inside the index page");
		ModelAndView model = new ModelAndView("index");
		return model;

	}

	// -----------------------------------------------registration-------------------------------------//
	@RequestMapping(value = "/registersuccess", method = RequestMethod.POST)
	public ModelAndView registration(@ModelAttribute("user") User user) {
		log.debug("inside registration controller");
		
		UserDAO userDAO = new UserDAOImpl();
		if (userDAO.validationRegistration(user)) { // validation of
													// registration occurs
			log.debug("inside register method if true");
			ModelAndView mv = new ModelAndView("registersuccess");
			return mv;
		} else {
			log.debug("inside register method if false");
			ModelAndView mv = new ModelAndView("login");
			return mv;

		}
    }
	
	public void registeruser(Model m) {
		m.addAttribute("msg", "Your are successfully registered,   Begin Here ");
	}

	// ------------------------------------------login------------------------------------------------------------//
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model m, HttpSession session) {
		log.debug("inside the login controller");
		UserDAO obj = new UserDAOImpl();

		if (obj.validationLogin(username, password)) { // validation for login
			log.debug("inside if login is valid ");
			ModelAndView mv = new ModelAndView("loginsuccess", "user", new User());
			session.setAttribute("user", obj.getById(username));
			if (obj.getById(username).getRole().equals("ROLE_ADMIN")) { // checking of the user role 
				log.debug("inside if login is admin ");
				mv.addObject("isAdmin", true); // if role is admin
				System.out.println(" admin true");
			} else {
				log.debug("inside if login is not admin "); // if role is user
				mv.addObject("isAdmin", false);
				System.out.println("admin false");

			}
			return mv;
		} else {
			log.debug("inside if login is invalid "); // if invalid user login's
			ModelAndView mv = new ModelAndView("login", "user", new User());
			mv.addObject("result", "Check your username or password, Try again ");
			return mv;
		}

	}
	
	
	
	/*@SuppressWarnings("unchecked")
	    @RequestMapping(value = "/loginresult")
	    public String login_session_attributes(HttpSession session, Model model) {

		String userid = SecurityContextHolder.getContext().getAuthentication().getName();

		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
			.getAuthentication().getAuthorities();
		String page = "";

		String role = "ROLE_USER";
		for (GrantedAuthority authority : authorities) {
		    if (authority.getAuthority().equals(role)) {

			session.setAttribute("UserLoggedIn", "true");
			session.setAttribute("Username", userid);
			page = "loginsuccess";
			break;
		    } else {
			session.setAttribute("LoggedIn", "true");
			session.setAttribute("Administrator", "true");
			page = "admin";
			break;
		    }
		}
		return page;
	    }*/

}
	