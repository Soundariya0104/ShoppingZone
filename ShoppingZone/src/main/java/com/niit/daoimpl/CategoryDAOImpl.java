package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;


@Service("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);
//------------------------------------------------------------------add-----------------------------------------------//
	public boolean addCategory(Category category) {
		log.debug("start of the add category method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(category);

		session.getTransaction().commit();
		session.close();
        log.debug("end of the dadd category method");
		return true;
	}

	//----------------------------------------------------delete-------------------------------------------------------//
	public boolean deleteCategory(String categoryId) {
		log.debug("start of the delete method");
	
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Category category = new Category();
		category.setCategoryId(categoryId);

		session.delete(category);
		session.getTransaction().commit();
		session.close();
        log.debug("end of the delete category method");
		return true;
	}
 //------------------------------------------------list-----------------------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Category> getCategoryList() {
		log.debug("start of the list category method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Category> list = (List<Category>) session.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        log.debug("end of the list category method");
		return list;

	}

//-----------------------------------------------retrieve id-----------------------------------------------------------//
	public Category getById(String username) {
		log.debug("start of the getbyid method");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		log.debug("end of the getbyid method");
		return session.get(Category.class,username);
		
	}

}
