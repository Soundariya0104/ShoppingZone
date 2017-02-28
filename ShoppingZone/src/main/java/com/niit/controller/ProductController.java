package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	Logger log = LoggerFactory.getLogger(ProductController.class);
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private OrderDAO cartDAO;

	@Autowired
	private OrderDAO orderDAO;

	String path = "F:\\MyProject\\ShoppingZone\\src\\main\\webapp\\WEB-INF\\resources\\images\\product\\";

	// ---------------------------------product---------------------------------------------------------//
	@RequestMapping(value = "/product") // mapping for "/product"
	public String productPage(Model model) {
        log.debug("inside product controller");
		model.addAttribute("product", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("category", new Category());
		model.addAttribute("productList", getJson());
		model.addAttribute("productlist", productDAO.getProductList()); // object for productlist
		model.addAttribute("categorylist", categoryDAO.getCategoryList()); // object for categorylist
		model.addAttribute("supplierlist", supplierDAO.getSupplierList());// object for supplierlist
    	model.addAttribute("page_name", "Product");
    	log.debug("end of product controller");
		return "product";

	}

	// ---------------------------------addproduct-------------------------------------------------------//
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST) // mapping for add product
	public String addProduct(@ModelAttribute("product") Product product, HttpServletRequest request,
			RedirectAttributes attributes, BindingResult result) {
        log.debug("inside add product method");
		if (result.hasErrors()) {
			System.out.println("Error ::: " + result.toString());
		} else {

			productDAO.saveOrUpdate(product);

			path = path + String.valueOf(product.getProductId()) + ".jpg";
			File f = new File(path);

			MultipartFile filedet = product.getImage();

			if (!filedet.isEmpty()) {
				try {
					byte[] bytes = filedet.getBytes();
					System.out.println(bytes.length);
					FileOutputStream fos = new FileOutputStream(f);
					BufferedOutputStream bs = new BufferedOutputStream(fos);
					bs.write(bytes);
					bs.close();
					System.out.println("File Uploaded Successfully");
				} catch (Exception e) {
					System.out.println("Exception Arised" + e);
				}
			} else {
				System.out.println("File is Empty not Uploaded");

			}
		}
		return "redirect:/product";

	}

	// ---------------------------------deleteproduct------------------------------------------------------------//
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET) // mapping for "deleteproduct
	public String deleteProduct(@RequestParam("productId") String productId) {
		log.debug("inside deleteproduct method");
		productDAO.deleteProduct(productId);
		return "redirect:/product";
	}

	// ---------------------------------editproduct----------------------------------------------------------------//
	@RequestMapping(value = "/editproduct", method = RequestMethod.GET) // mapping for editproduct
	public String editProduct(@RequestParam("productId") String productId, Model model, HttpSession session) {
		log.debug("inside editProduct Controller");
		model.addAttribute("values", productDAO.getById(productId));
		model.addAttribute("product", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("category", new Category());
		model.addAttribute("productlist", productDAO.getProductList()); // object for productlist
		model.addAttribute("categorylist", categoryDAO.getCategoryList()); // object for categorylist
		model.addAttribute("supplierlist", supplierDAO.getSupplierList()); // object for supplierlist
		String User = (String) session.getAttribute("User");
		model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
        log.debug("end of editproduct method");
		return "redirect:/product";

	}
	
	public String getJson(){
	  	  ArrayList<Product> list=(ArrayList<Product>)productDAO.getProductList();
	  		Gson gson= new Gson();
	  		return gson.toJson(list);
	  		
	    }

	// -------------------------------------------------USER COMMMON----------------------------------------------//
	@RequestMapping(value = "/categorypage", method = RequestMethod.GET) // mapping for product
	public String categoryPageUser(Model model, @RequestParam("categoryId") String categoryId, HttpSession session) {
		log.debug("inside categorypage method");
		model.addAttribute("values", productDAO.getProductListbycategory(categoryId));
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		String User = (String) session.getAttribute("User");
		model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
        log.debug("end of categorypage method");
		return "categorypage";

	}
	
	 

	 

	//-------------------------------------------------productpage---------------------------------------------------//
	@RequestMapping(value = "/productpage", method = RequestMethod.GET) // mapping for productpage
	public String productPageUser(Model model, @RequestParam("productId") String productId, HttpSession session) {
        log.debug("inside of productpage");
		model.addAttribute("productbyId", productDAO.getById(productId));
		model.addAttribute("productId", "productId");
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		model.addAttribute("productList",
				productDAO.getProductListbycategory(productDAO.getById(productId).getCategoryId()));
		model.addAttribute("category", categoryDAO.getById(productDAO.getById(productId).getCategoryId()));
		String User = (String) session.getAttribute("User");
		model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());

		if (productDAO.getById(productId).getProductQuantity() != 0) {
			model.addAttribute("stock", "in-Stock");
		} else {
			model.addAttribute("stock", "out of Stock");
		}
		log.debug("end of productpage");
		return "productpage";
	}
	



}
