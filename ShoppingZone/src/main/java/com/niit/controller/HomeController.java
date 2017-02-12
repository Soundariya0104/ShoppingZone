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

import com.niit.dao.CategoryDAO;
import com.niit.dao.UserDAO;
import com.niit.daoimpl.UserDAOImpl;
import com.niit.model.User;

@Controller
public class HomeController {

	@Autowired(required=true)
	private UserDAO userDao;
	
	
	@Autowired(required = true)
    private CategoryDAO categoryDAO;

	Logger log = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/admin") // mapping for admin page
	public ModelAndView adminPage() {
		log.debug("inside admin page");
		ModelAndView model = new ModelAndView("admin");
		return model;
	}
	@RequestMapping(value = "/") // mapping index page
	public String indexPage(Model m) {
		log.debug("inside the index page");
		m.addAttribute("categoryList",categoryDAO.getCategoryList());
        return "index";
	}
	
	@RequestMapping(value = "/aboutus") // mapping aboutus page
	public ModelAndView aboutPage() {
		log.debug("inside the aboutus page");
		ModelAndView model = new ModelAndView("aboutus");
		return model;

	}
	
	@RequestMapping(value = "/contactus") // mapping aboutus page
	public ModelAndView contactPage() {
		log.debug("inside the contactus page");
		ModelAndView model = new ModelAndView("contactus");
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
	
	
	
	@SuppressWarnings("unchecked")
    @RequestMapping(value = "/loginresult", method = RequestMethod.POST)
    public String login_session_attributes(@RequestParam("username") String username,@RequestParam("password") String password, HttpSession session, Model model) {
	String userid = SecurityContextHolder.getContext().getAuthentication().getName();

	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
		.getAuthentication().getAuthorities();
	String page = "";
System.out.println("hi am insed method");
	String role = "ROLE_USER";
	for (GrantedAuthority authority : authorities) {
	    System.out.println(authority.getAuthority());
	    if (authority.getAuthority().equals(role)) {
		session.setAttribute("Loggedin", "true");
		session.setAttribute("isUser", "true");
		session.setAttribute("User", userid);
		page = "index";
		model.addAttribute("categoryList", categoryDAO.getCategoryList());

		break;
	    } else {
		session.setAttribute("Loggedin", "true");
		session.setAttribute("isAdmin", "true");
		session.setAttribute("User", userid);
		page = "admin";
		break;
	    }
	}
	return page;
    }
	
	//------------------------------------logout----------------------------------------------//
	 @RequestMapping("/logout")//mapping for logout
	    public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("index");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("logoutMessage", "you are successfully logged out");
		mv.addObject("loggedOut", "true");
		mv.addObject("categoryList", categoryDAO.getCategoryList());
		return mv;
	    }
}


	