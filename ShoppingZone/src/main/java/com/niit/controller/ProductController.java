package com.niit.controller;
	import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.daoimpl.CategoryDAOImpl;
import com.niit.daoimpl.ProductDAOImpl;
import com.niit.daoimpl.SupplierDAOImpl;
import com.niit.model.Product;


	@Controller
	public class ProductController {
		
		Logger log = LoggerFactory.getLogger(ProductController.class);	
		//---------------------------------add--------------------------------//
		
        @RequestMapping(value = "/addproduct", method = RequestMethod.GET)                    //mapping for addproduct
		public String addProduct(Product product) {
        	log.debug("inside the addproduct controller");
			ProductDAO productDAO = new ProductDAOImpl();
			productDAO.addProduct(product);
			return "redirect:/product";

		}

		// ---------------------------------delete---------------------------------//

		@RequestMapping(value = "/deleteproduct", method = RequestMethod.GET)              //mapping for deleteproduct
		public String deleteProduct(@RequestParam("productId") String productId) {
			log.debug("inside the deleteproduct controller");
			ProductDAO productDAO = new ProductDAOImpl();

			productDAO.deleteProduct(productId);
			return "redirect:/product";

		}
		//--------------------------------edit------------------------------------//
		@RequestMapping(value = "/editproduct", method = RequestMethod.GET)                   //mapping for editproduct
	    public ModelAndView editProduct(@RequestParam("productId") String productId) {
			log.debug("inside the editproduct controller");
		ModelAndView mv = new ModelAndView("product", "product", new Product());
		ProductDAO productDAO = new ProductDAOImpl();
		CategoryDAO categoryDAO = new CategoryDAOImpl();
		SupplierDAO supplierDAO = new SupplierDAOImpl();

		mv.addObject("values", productDAO.getById(productId));
		mv.addObject("list", productDAO.getProductList());              //object for the product list
		mv.addObject("categorylist", categoryDAO.getCategoryList());    //object for the category list
		mv.addObject("supplierlist", supplierDAO.getSupplierList());    //object for the supplier list
		return mv;
	    }

       //-----------------------------------------product-----------------------------------------//

		@RequestMapping(value = "/product",method=RequestMethod.GET)                         //mapping for the product page
		public ModelAndView hello2(Model m) {
			log.debug("inside the product controller");
			ProductDAO productDAO=new ProductDAOImpl();
			ModelAndView mv = new ModelAndView("product","product",new Product());
			CategoryDAO categoryDAO=new CategoryDAOImpl();
			SupplierDAO supplierDAO=new SupplierDAOImpl();
			mv.addObject("list",productDAO.getProductList());
			mv.addObject("categorylist",categoryDAO.getCategoryList());
			mv.addObject("supplierlist", supplierDAO.getSupplierList());
			return mv;
		}

	}


