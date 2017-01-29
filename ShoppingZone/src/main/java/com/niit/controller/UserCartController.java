package com.niit.controller;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.UserDAO;
import com.niit.model.User;


	@Controller
	public class UserCartController {

	    @Autowired
	    private UserDAO userDAO;
	    
	   
	    @RequestMapping("/Cart")
	    public String getCartItems(Principal username,Model model){
	    	User userDetails = userDAO.get(username.getName());
	        int cartId = userDetails.getCart().getCartId();
	        model.addAttribute("cartId", cartId);
	        return "Cart";
	    }

	}

