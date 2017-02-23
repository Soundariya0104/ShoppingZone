package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	Logger log = LoggerFactory.getLogger(CartController.class);
    
	//------------------------------------Add to Cart------------------------------------------------------------//
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)          //mapping for addtocart
	public String addtocart(@RequestParam("username") String username, @RequestParam("productId") String productId,
			@RequestParam("quantity") int quantity, Model model) {
		log.debug("inside the addtocart");
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		orderDAO.add(productDAO.getById(productId), userDAO.getById(username), quantity,
				quantity * productDAO.getById(productId).getProductPrice());

		model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		System.out.println(orderDAO.getOrderListbyname(username));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		log.debug("end of addtocart");
		return "cart";
	}
	
    //---------------------------------Cart----------------------------------------------------------------------//
	@RequestMapping(value = "/cart", method = RequestMethod.GET)              //mapping for cart
	public String addtocart(@RequestParam("username") String username, HttpSession session, Model model) {
		log.debug("inside cart method");
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		log.debug("end of cart method");
		return "cart";
	}
	
    //---------------------------------remove order--------------------------------------------------------------//
	@RequestMapping(value = "/removeorder", method = RequestMethod.GET)         //mapping for removeorder
	public String removeorder(@RequestParam("orderId") int orderId, @RequestParam("username") String username,
			Model model) {
		log.debug("inside remove order method");
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		orderDAO.remove(orderId);
		model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		log.debug("end of removeorder method");
		return "cart";
	}
    
	//---------------------------------checkout--------------------------------------------------------------------//
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)            //mapping for checkout
	public String checkout(@RequestParam("username") String username, Model model) {
        log.debug("inside checkout method");
		model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		model.addAttribute("address", new Address());
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		log.debug("end of checkout method");
		return "checkout";
	}

	//---------------------------------carddetails-----------------------------------------------------------------//
	@RequestMapping(value = "/carddetails", method = RequestMethod.GET)
	public String paymentbycard(Address address, Model model, HttpSession session) {
        log.debug("inside carddetails method");
		session.setAttribute("address", address);
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		model.addAttribute("carddetail", new Carddetail());

		if (address.getPaymentOption().equals("By Card")) {
			return "carddetails";
			
		} else {
			log.debug("end of carddetails method");
			return "paymentsuccess";

		}
	}
	
    //------------------------------------finalindex--------------------------------------------------------------//
	@RequestMapping(value = "finalindex")
	public String cardpaymentsuccess(@RequestParam("username") String username, Model model) {
		log.debug("inside final index method");
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		orderDAO.removeorderbycartid(username);
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
        log.debug("end of final index method");
		return "index";

	}
}
