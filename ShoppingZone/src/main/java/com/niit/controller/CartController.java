package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Address;
import com.niit.model.Carddetail;


@Controller
public class CartController {

	  @Autowired
	    private ProductDAO productDAO;

	
	   @Autowired
	    private UserDAO userDAO;

	   @Autowired
	    private OrderDAO orderDAO;


	   @Autowired
	    private CategoryDAO categoryDAO;
	   
	  

	   
	 @RequestMapping(value="/cart",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")String username, @RequestParam("productId")String productId, Model model){
		 orderDAO.add(productDAO.getById(productId),userDAO.getById(username));
		 System.out.println("hiii");
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 return "cart";
	    }
	
	 
	 
	 @RequestMapping(value="/removeorder",method=RequestMethod.GET)
	    public String removeorder(@RequestParam("orderId")int orderId, @RequestParam("username")String username, Model model){
	
			 orderDAO.remove(orderId);
			 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
			 return "cart";
		 }
	
	
	 
	 
	 @RequestMapping(value="/checkout",method=RequestMethod.GET)
		 public String checkout(@RequestParam("username")String username, Model model){
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 model.addAttribute("address", new Address());		 
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());	
		return "checkout";
			 }
	
	 @RequestMapping(value="/carddetails",method=RequestMethod.GET)
	    public String paymentbycard( Address address, Model model){

		 model.addAttribute("address", address);
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
		 model.addAttribute("carddetail",new Carddetail());
		 
	return "carddetails";
	
		 }
	 
	 @RequestMapping(value = "/payment") // mapping index page
		public ModelAndView cartPage() {
			
			ModelAndView model = new ModelAndView("payment");
			return model;
		 
}
	 
}
