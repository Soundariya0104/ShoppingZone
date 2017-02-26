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
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.User;

@Controller
public class HomeController {

	@Autowired(required = true)
	private UserDAO userDao;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;;

	@Autowired
	private OrderDAO orderDAO;

	Logger log = LoggerFactory.getLogger(HomeController.class);
    
	//---------------------------------------------admin---------------------------------------------//
	@RequestMapping(value = "/admin") // mapping for admin page
	public ModelAndView adminPage() {
		log.debug("inside admin page");
		ModelAndView model = new ModelAndView("admin");
		model.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of admin page");
		return model;
	}

	//----------------------------------------/ Controller-------------------------------------------//
	@RequestMapping(value = "/") // mapping index page
	public String index(Model m, HttpServletRequest request, HttpSession session) {
		log.debug("inside / controller");
		session.invalidate();
		session = request.getSession(true);
		m.addAttribute("categoryList", categoryDAO.getCategoryList());
		System.out.println("am inside indexpage controller");
		String User = (String) session.getAttribute("User");
		m.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		m.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
		log.debug("end of / method");
		return "index";
	}

	//----------------------------------------about us-------------------------------------------------//
	@RequestMapping(value = "/aboutus") // mapping aboutus page
	public String aboutus(Model m, HttpSession session) {
		log.debug("inside aboutus controller");
		m.addAttribute("categoryList", categoryDAO.getCategoryList());

		String User = (String) session.getAttribute("User");
		m.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		m.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
		log.debug("end aboutus controller");
		return "aboutus";
	}

	//---------------------------------------contact us-------------------------------------------------//
	@RequestMapping(value = "/contactus") // mapping contactus page
	public ModelAndView contactPage() {
		log.debug("inside the contactus page");
		ModelAndView model = new ModelAndView("contactus");
		model.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of contact us");
		return model;

	}

	// -------------------------------delete-------------------------------------------------------------//
	@RequestMapping(value = "/delete") // mapping for delete page
	public ModelAndView deletePage() {
		log.debug("inside delete page");
		ModelAndView model = new ModelAndView("delete", "user", new User());
		model.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of delete method");
		return model;

	}

	//--------------------------------delete------------------------------------------------------------//
	@RequestMapping("/deletesuccess") // mapping for deletesuccess page
	public String deletesuccess(@RequestParam("userName") String username, @RequestParam("password") String password,
			Model m) {
        log.debug("inside deletesuccess");
		m.addAttribute("msg", "Deleted");
		userDao.userDelete(username, password);
		log.debug("end of delete success");
		return "deletesuccess";

	}
	
	//-------------------------------------------------------User profile page----------------------------------------------------------------------------------------------
    @RequestMapping(value="/userpage")
    public ModelAndView userr(@RequestParam("username") String username){
    	log.debug("inside userpage controller");
    	ModelAndView model= new ModelAndView("userpage");
    	model.addObject("categoryList", categoryDAO.getCategoryList());
    	model.addObject("userDetails", userDao.getById(username));
    	log.debug("leaving userpage controller");
    	return model;
    }

	// -----------------------------------------------registration-------------------------------------//
	@RequestMapping(value = "/register") // mapping for register page
	public ModelAndView registerPage() {
		log.debug("inside register page");
		ModelAndView model = new ModelAndView("register", "user", new User());
		model.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of register method");
		return model;
	}

	//----------------------------------------------register success-----------------------------------//
	@RequestMapping(value = "/registersuccess", method = RequestMethod.POST)  //mapping for register success
	public ModelAndView registration(@ModelAttribute("user") User user) {
		log.debug("inside registration controller");
        if (userDao.validationRegistration(user)) { // validation of  registration occurs
													
			log.debug("inside register method if true");
			ModelAndView mv = new ModelAndView("registersuccess");
			mv.addObject("categoryList", categoryDAO.getCategoryList());
			mv.addObject("user", user);
			log.debug("end of register if true");
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
		model.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of login method");
		return model;

	}
    //---------------------------------------------login validation----------------------------------------//
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/loginresult", method = RequestMethod.POST)
	public String login_session_attributes(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session, Model model) {
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();

		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
				.getAuthentication().getAuthorities();
		String page = "";
		System.out.println("hi am inside method");
		String role = "ROLE_USER";
		for (GrantedAuthority authority : authorities) {
			System.out.println(authority.getAuthority());
			if (authority.getAuthority().equals(role)) {
				session.setAttribute("Loggedin", "true");
				session.setAttribute("isUser", "true");
				session.setAttribute("User", userid);
				page = "index";
				model.addAttribute("categoryList", categoryDAO.getCategoryList());
				model.addAttribute("cartList", orderDAO.getOrderListbyname(userid));
				model.addAttribute("cartsize", orderDAO.getOrderListbyname(userid).size());

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

	// ------------------------------------logout----------------------------------------------//
	@RequestMapping("/logout") // mapping for logout
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		log.debug("inside logout method");
		ModelAndView mv = new ModelAndView("index");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("logoutMessage", "you are successfully logged out");
		mv.addObject("loggedOut", "true");
		mv.addObject("categoryList", categoryDAO.getCategoryList());
		log.debug("end of logout method");
		return mv;
	}
	
	//--------------------------------------exception handling-----------------------------------//
	@ExceptionHandler(Exception.class)
	public String handleAllException(Exception ex) {

		return "404error";

	}

}
