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
    import com.niit.daoimpl.CategoryDAOImpl;
    import com.niit.model.Category;

	
	@Controller
	public class CategoryController {
	Logger log = LoggerFactory.getLogger(CategoryController.class);

		//----------------------------add-----------------------------------//
		@RequestMapping(value = "/addcategory", method = RequestMethod.GET)            //mapping for addcategory
		public String addcategory(Category category) {
			log.debug("inside of the addcategory controller");
			CategoryDAO categoryDAO = new CategoryDAOImpl();
			categoryDAO.addCategory(category);
			return "redirect:/category";

		}

		// ---------------------------------delete---------------------------------//


		@RequestMapping(value = "/deletecategory", method = RequestMethod.GET)          //mapping for delete category
		public String deletecategory(@RequestParam("categoryId") String categoryId) {
			CategoryDAO categoryDAO = new CategoryDAOImpl();
			log.debug("inside of the deletecategory controller");
			categoryDAO.deleteCategory(categoryId);
			return "redirect:/category";

		}

		//------------------------------------edit-------------------------------------------------------//
		
		@RequestMapping(value = "/editcategory", method = RequestMethod.GET)		
		public ModelAndView editCategory(@RequestParam("categoryId") String categoryId) {
			CategoryDAO categoryDAO = new CategoryDAOImpl();
			log.debug("inside of the editcategory controller");
			ModelAndView mv = new ModelAndView("category", "category", new Category());
			mv.addObject("list", categoryDAO.getCategoryList());

		    mv.addObject("values", categoryDAO.getById(categoryId));

			return mv;
		}
		@RequestMapping(value="/category")                                   //mapping for category page
		public ModelAndView hellooo(Model m) {
			CategoryDAO categoryDAO=new CategoryDAOImpl();
			log.debug("inside of the category controller");
			ModelAndView mv=new ModelAndView("category", "category",new Category());
			mv.addObject("list",categoryDAO.getCategoryList());
			return mv;
		}

	}


