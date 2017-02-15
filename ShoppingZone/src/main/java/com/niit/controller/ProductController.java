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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.daoimpl.CategoryDAOImpl;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.util.FileUtil;


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

    String path ="F:\\MyProject\\ShoppingZone\\src\\main\\webapp\\WEB-INF\\resources\\images\\";
    // ---------------------------------product---------------------------------
    @RequestMapping(value = "/product") //mapping for "/product"
    public String productPage(Model model) {

	model.addAttribute("product", new Product());
	model.addAttribute("supplier", new Supplier());
	model.addAttribute("category", new Category());

	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList
	model.addAttribute("supplierlist", supplierDAO.getSupplierList());//object for supplierList
    model.addAttribute("page_name","Product");
	return "product";

	}

 // ---------------------------------add---------------------------------
    @RequestMapping(value = "/addProduct", method = RequestMethod.GET) //mapping for "/addproduct"
    public String addProduct(@ModelAttribute("product") Product product, HttpServletRequest request,
	    RedirectAttributes attributes, BindingResult result)
	{

	if (result.hasErrors()) {
	    System.out.println("Error ::: " + result.toString());
	} else {

	    Category category = categoryDAO.getByName(product.getCategory().getCategoryName());
	    categoryDAO.saveOrUpdate(category);
	    Supplier supplier = supplierDAO.getByName(product.getSupplier().getSupplierName());
	   
		supplierDAO.saveOrUpdate(supplier);

	    product.setCategory(category);
	    product.setSupplier(supplier);

	    product.setCategoryId(category.getCategoryId());
	    product.setSupplierId(supplier.getSupplierId());

	    productDAO.saveOrUpdate(product);
		
		path=path+String.valueOf(product.getProductId())+".jpg";
		File f=new File(path);
	
		MultipartFile filedet=product.getImage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
          			BufferedOutputStream bs=new BufferedOutputStream(fos);
          			bs.write(bytes);
          			bs.close();
         			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
	}
	}
	return "redirect:/product";

    }
   

	// ---------------------------------delete---------------------------------
    @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET) //mapping for "/deleteproduct"
    public String deleteProduct(@RequestParam("productId") String productId) {
	productDAO.deleteProduct(productId);

	return "redirect:/product";

	}

    // ---------------------------------edit---------------------------------
    @RequestMapping(value = "/editproduct", method = RequestMethod.GET) //mapping for "/editproduct"
    public String editProduct(@RequestParam("productId") String productId, Model model) {
	log.debug("inside editProduct Controller");

	model.addAttribute("values", productDAO.getById(productId));
	model.addAttribute("product", new Product());
	model.addAttribute("supplier",new Supplier());
	model.addAttribute("category",new Category());
	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList
	model.addAttribute("supplierlist", supplierDAO.getSupplierList()); //object for supplierList
	return "redirect:/product";

    }

//  -------------------------------------------------USER COMMMON----------------------------------------------
    @RequestMapping(value = "/categorypage", method = RequestMethod.GET) //mapping for "/product"
  public String categoryPageUser(Model model, @RequestParam("categoryId") String categoryId,HttpSession session) {
	model.addAttribute("values", productDAO.getProductListbycategory(categoryId));
	model.addAttribute("categoryList", categoryDAO.getCategoryList());
	
	String User = (String)session.getAttribute("User");
//	model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
//	model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
	
	
	return "categorypage";

  }

     
  
  @RequestMapping(value = "/productpage", method = RequestMethod.GET) //mapping for "/product"
  public String productPageUser(Model model, @RequestParam("productId") String productId,HttpSession session) {

	model.addAttribute("productbyId", productDAO.getById(productId));
//	model.addAttribute("productId", "productId");
//	model.addAttribute("categoryList", categoryDAO.getCategoryList());
//	model.addAttribute("productList", productDAO.getProductListbycategory(productDAO.getById(productId).getCategoryId()));
//	model.addAttribute("category", categoryDAO.getById(productDAO.getById(productId).getCategoryId()));
//	
//	String User = (String)session.getAttribute("User");
//	model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
//	model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
//	
//	
//	if(productDAO.getById(productId).getProductQuantity()!=0){
//	model.addAttribute( "stock","in-Stock" );
//	}else{
//		model.addAttribute( "stock","out of Stock" );	
//	}
	return "productpage";
  }

}
