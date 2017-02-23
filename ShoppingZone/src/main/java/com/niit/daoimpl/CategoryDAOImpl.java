package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.controller.CartController;
import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	Logger log = LoggerFactory.getLogger(OrderDAOImpl.class);
	
	// ------------------------------------add&edit category-------------------------------------------------//
	public boolean addCategory(Category category) {
		log.debug("inside addcategory controller");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(category);
		session.getTransaction().commit();
		session.close();
        log.debug("end of addcategorycontroller");
		return true;
	}

	// ------------------------------------delete category-----------------------------------------------------//
	public boolean deleteCategory(String categoryId) {
		log.debug("inside deletecategory method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		System.out.println("hii");
		Category category = new Category();
		category.setCategoryId(categoryId);
		session.delete(category);
		session.getTransaction().commit();
		session.close();
        log.debug("end of delete category method");
		return true;
	}

	// ---------------------------------------list category-------------------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Category> getCategoryList() {
		log.debug("inside list method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Category> list = (List<Category>) session.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		log.debug("end of list method");
		return list;

	}

	// --------------------------------------retrieve by Id-----------------------------------------------------//
	public Category getById(String username) {
        log.debug("inside retrieve by id");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
        log.debug("end of retrieve by id");
		return session.get(Category.class, username);

	}
	
    //--------------------------------------get by name---------------------------------------------------------//
	@Transactional
	public Category getByName(String name) {
		log.debug("inside get by name");
		String hql = "from Category where name =" + "'" + name + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list = (List<Category>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		log.debug("end of get by name");
		return null;
	}

	//----------------------------------------saveOrupdate------------------------------------------------------//
	@Transactional
	public void saveOrUpdate(Category categoryModel) {
		sessionFactory.getCurrentSession().saveOrUpdate(categoryModel);

	}

}
