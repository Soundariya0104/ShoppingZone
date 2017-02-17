package com.niit.daoimpl;

import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    SessionFactory sessionFactory;
    //------------------------------------add&edit category-------------------------------------------------//
	public boolean addCategory(Category category) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(category);

		session.getTransaction().commit();
		session.close();

		return true;
	}

    //------------------------------------delete category---------------------------------------------------//
	public boolean deleteCategory(String categoryId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
        System.out.println("hii");
		Category category = new Category();
		category.setCategoryId(categoryId);

		session.delete(category);
		session.getTransaction().commit();
		session.close();

		return true;
	}
 
    //---------------------------------------list category--------------------------------------------------//	
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Category> getCategoryList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Category> list = (List<Category>) session.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}
	
    //--------------------------------------retrieve by Id----------------------------------------------------//
	public Category getById(String username) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		return session.get(Category.class, username);

	}
	
	@Transactional
    public Category getByName(String name) {
	String hql = "from Category where name =" + "'" + name + "'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Category> list = (List<Category>) query.list();
	if (list != null && !list.isEmpty()) {
	    return list.get(0);
	}
	return null;
    }

    @Transactional
    public void saveOrUpdate(Category categoryModel) {
	sessionFactory.getCurrentSession().saveOrUpdate(categoryModel);

    }


}
