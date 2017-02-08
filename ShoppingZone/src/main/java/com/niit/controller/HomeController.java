package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@Autowired(required=true)
	private UserDAO userDao;

	Logger log = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/admin") // mapping for admin page
	public ModelAndView adminPage() {
		log.debug("inside admin page");
		ModelAndView model = new ModelAndView("admin");
		return model;
	}
	@RequestMapping(value = "/index") // mapping index page
	public ModelAndView indexPage() {
		log.debug("inside the index page");
		ModelAndView model = new ModelAndView("index");
		return model;

	}

    //-------------------------------delete-------------------------------------------------------------//
	@RequestMapping(value = "/delete") // mapping for delete page
	public ModelAndView deletePage() {
		log.debug("inside delete page");
		ModelAndView model = new ModelAndView("delete", "user", new User());
		return model;

	}

		@RequestMapping("/deletesuccess")//mapping for deletesuccess page
	public String deletesuccess(@RequestParam("userName") String username, @RequestParam("password") String password,
			Model m) {
		
		m.addAttribute("msg", "Deleted");
		userDao.userDelete(username, password);
		return "deletesuccess";

	}

	// -----------------------------------------------registration-------------------------------------//
	
	@RequestMapping(value = "/register") // mapping for register page
	public ModelAndView registerPage() {
		log.debug("inside register page");
		ModelAndView model = new ModelAndView("register", "user", new User());
		return model;
	}
	@RequestMapping(value = "/registersuccess", method = RequestMethod.POST)
	public ModelAndView registration(@ModelAttribute("user") User user) {
		log.debug("inside registration controller");
		
		if (userDao.validationRegistration(user)) { // validation of
													// registration occurs
			log.debug("inside register method if true");
			ModelAndView mv = new ModelAndView("registersuccess");
			mv.addObject("user",user);
			return mv;
		} else {
			log.debug("inside register method if false");
			ModelAndView mv = new ModelAndView("loginpage");
			return mv;

		}
    }
	
	public void registeruser(Model m) {
		m.addAttribute("msg", "Your are successfully registered,Begin Here ");
	}
	

	// ------------------------------------------login------------------------------------------------------------//
	
	@RequestMapping(value = "/loginpage") // mapping for login page
	public ModelAndView loginPage() {
		log.debug("inside login page");
		ModelAndView model = new ModelAndView("loginpage", "user", new User());
		return model;

	}	
	
	// ---------------------------------login-----------------------------------------
	/*	@RequestMapping(value = "/loginresult", method = RequestMethod.POST)					//mapping for "/loginresult"
		public ModelAndView hello4(@RequestParam("username") String username, @RequestParam("password") String password,
				Model m, HttpSession session) {
		    log.debug("inside controller for loginresult");
		//UserDAO userDAO = new UserDAOImpl();

		if (userDao.validationLogin(username, password) != null) { //username password validation
			    log.debug("inside if login is valid ");
		    ModelAndView model = new ModelAndView("loginresult", "user", new User()); //if yes adding loginresult page
				session.setAttribute("user", userDao.getById(username));

				if (userDao.getById(username).getRole().equals("ROLE_ADMIN")) {				//checking ROLE
				    log.debug("inside if login is ROLE_ADMIN");
					model.addObject("isAdmin", true);

				} else {										//if not valid user
				    log.debug("inside if login is ROLE_USER");
					model.addObject("isAdmin", false);
				}
				return model;
			} else {
			    log.debug("inside if login is not valid, try again");
		    ModelAndView model = new ModelAndView("login", "user", new User());
				model.addObject("msg", "check your password and username");
			return model;
			}
		}
	}*/
	
	
	
	@SuppressWarnings("unchecked")
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
	    }
	 @RequestMapping("/logout")
	    public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("index");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("logoutMessage", "you are successfully logged out");
		mv.addObject("loggedOut", "true");
		return mv;
	    }
}


	