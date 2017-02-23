package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	Logger log = LoggerFactory.getLogger(SupplierController.class);

	@Autowired
	SupplierDAO supplierDAO;

	// ---------------------------------supplier---------------------------------------------------------------------//
	@RequestMapping(value = "/supplier", method = RequestMethod.GET) // mapping for supplier
	public ModelAndView supplierPage(Model m) {
		log.debug("inside supplier method");
		ModelAndView model = new ModelAndView("supplier", "supplier", new Supplier());
		model.addObject("list", supplierDAO.getSupplierList());
		model.addObject("page_name", "Supplier");
		log.debug("end of supplier method");
		return model;
	}

	// ---------------------------------addsupplier------------------------------------------------------------------//
	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET) // mapping for addsupplier
	public String addSupplier(Supplier supplier) {
        log.debug("inside addsupplier method");
		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";

	}

	// ---------------------------------deletesupplier------------------------------------------------------------------//
	@RequestMapping(value = "/deletesupplier", method = RequestMethod.GET) // mapping for delete supplier
	public String deletesupplier(@RequestParam("supplierId") String supplierId) {
        log.debug("inside delete supplier method");
		supplierDAO.deleteSupplier(supplierId);
		return "redirect:/supplier";

	}

	// ---------------------------------editsupplier-------------------------------------------------------------------//
	@RequestMapping(value = "/editsupplier", method = RequestMethod.GET) // mapping for edit supplier
	public ModelAndView editSupplier(@RequestParam("supplierId") String supplierId) {
		ModelAndView model = new ModelAndView("supplier", "supplier", new Supplier());
		log.debug("inside editupplier Controller");
		model.addObject("list", supplierDAO.getSupplierList());
		model.addObject("values", supplierDAO.getById(supplierId));
		model.addObject("page_name", "Supplier");
		return model;
	}

}
