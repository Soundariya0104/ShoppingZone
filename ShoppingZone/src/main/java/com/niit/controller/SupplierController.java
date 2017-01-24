package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.daoimpl.SupplierDAOImpl;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
     Logger log=LoggerFactory.getLogger("SupplierController.class");
	// ----------------------------add-------------------------------------//

	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET)                    //mapping for addsupplier
	public String addsupplier(Supplier supplier) {
		log.debug("inside the addsupplier");
		SupplierDAO supplierDAO = new SupplierDAOImpl();

		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";

	}

	// ---------------------------------delete---------------------------------//
	@RequestMapping(value = "/deletesupplier", method = RequestMethod.GET)               //mapping for deletesupplier
	public String deletesupplier(@RequestParam("supplierId") String supplierId) {
		log.debug("inside the deletesupplier");
		SupplierDAO supplierDAO = new SupplierDAOImpl();

		supplierDAO.deleteSupplier(supplierId);
		return "redirect:/supplier";

	}
   //---------------------------------supplier--------------------------------------//
	@RequestMapping(value = "/supplier")                                                 //mapping for supplier page
	public ModelAndView hellooo(Model m) {
		log.debug("inside the supplier controller");
		ModelAndView mv = new ModelAndView("supplier", "supplier", new Supplier());
		SupplierDAO supplierDAO = new SupplierDAOImpl();
		mv.addObject("list", supplierDAO.getSupplierList());
		return mv;
	}

	// ---------------------------------edit---------------------------------//
	@RequestMapping(value = "/editsupplier", method = RequestMethod.GET)                //mapping the editsupplier
	public ModelAndView editSupplier(@RequestParam("supplierId") String supplierId) {
		log.debug("inside the editsupplier");
		SupplierDAO supplierDAO = new SupplierDAOImpl();
		ModelAndView mv = new ModelAndView("supplier", "supplier", new Supplier());
		mv.addObject("list", supplierDAO.getSupplierList());

		mv.addObject("values", supplierDAO.getById(supplierId));
		return mv;
	}

}
