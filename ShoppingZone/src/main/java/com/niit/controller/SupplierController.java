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
Logger log= LoggerFactory.getLogger(SupplierController.class);

    @Autowired
    SupplierDAO supplierDAO;
    // ---------------------------------supplier---------------------------------
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)			//mapping for "/supplier"
	public ModelAndView supplierPage(Model m) {
		ModelAndView model = new ModelAndView("supplier", "supplier", new Supplier());
		model.addObject("list", supplierDAO.getSupplierList());
		model.addObject("page_name","Supplier");
		return model;
	}

    // ---------------------------------add---------------------------------
	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET)			//mapping for "addsupplier"
	public String addSupplier(Supplier supplier) {

		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";

	}

	// ---------------------------------delete---------------------------------
	@RequestMapping(value = "/deletesupplier", method = RequestMethod.GET)				//mapping for "/deletesupplier"
	public String deletesupplier(@RequestParam("supplierId") String supplierId) {

		supplierDAO.deleteSupplier(supplierId);
		return "redirect:/supplier";

	}

    // ---------------------------------edit---------------------------------
    @RequestMapping(value = "/editsupplier", method = RequestMethod.GET) //mapping for "/editsupplier"
    public ModelAndView editSupplier(@RequestParam("supplierId") String supplierId) {
	ModelAndView model = new ModelAndView("supplier", "supplier", new Supplier());
	log.debug("inside editSupplier Controller");
	model.addObject("list", supplierDAO.getSupplierList());

	model.addObject("values", supplierDAO.getById(supplierId));
	model.addObject("page_name","Supplier");
	return model;
    }

}
