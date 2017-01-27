package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;


@Service("productDAO")
public class ProductDAOImpl implements ProductDAO {
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;
    //----------------------------------addProduct--------------------------------------------//
    
	public boolean addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(product);

		session.getTransaction().commit();
		session.close();

		return true;
	}
    //-----------------------------------deleteProduct----------------------------------------// 
    public boolean deleteProduct(String productId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Product product = new Product();
		product.setProductId(productId);

		session.delete(product);
		session.getTransaction().commit();
		session.close();

		return true;
	}
    //-------------------------------------list product--------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Product> list = (List<Product>) session.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}

    //-------------------------Retrieve by Id----------------------------------------------------//
    public Product getById(String productId) {
	log.debug("inside getbyId");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	log.debug("before query");
	System.out.println("am inside before query getbyid");
	return session.get(Product.class, productId);

    }

}
