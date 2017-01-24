package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

public class ProductDAOImpl implements ProductDAO {
	Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);
	//--------------------------------------------add-----------------------------------------------------------//
	public boolean addProduct(Product product) {
		log.debug("start of the add product method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(product);

		session.getTransaction().commit();
		session.close();
        log.debug("end of the add product method");
		return true;
	}
    //----------------------------------------------delete-------------------------------------------------------//
	public boolean deleteProduct(String productId) {
		log.debug("start of the delete method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Product product = new Product();
		product.setProductId(productId);

		session.delete(product);
		session.getTransaction().commit();
		session.close();
        log.debug("end of the delete method");
		return true;
	}
     //---------------------------------------------------list----------------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductList() {
		log.debug("start of the list method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Product> list = (List<Product>) session.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        log.debug("end of the debug method");
	  	return list;
   
	}
	//--------------------------------------------retrive id---------------------------------------------------------//
	public Product getById(String productId) {
		log.debug("start of the getbyid method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		log.debug("end of the getbyid method");
		return session.get(Product.class, productId);

	    }
}
