package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Service("productDAO")
public class ProductDAOImpl implements ProductDAO {
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;
	public boolean addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(product);

		session.getTransaction().commit();
		session.close();

		return true;
	}

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

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Product> list = (List<Product>) session.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}

    //-------------------------Retrieve by Id---------------------------------
    public Product getById(String productId) {
	log.debug("inside getbyId");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	log.debug("before query");
	System.out.println("am inside before query getbyid");
	return session.get(Product.class, productId);

    }

    //-----------------------------------saveOrUpdate-----------------------------------------------
    @Transactional
    public void saveOrUpdate(Product product) {
	sessionFactory.getCurrentSession().saveOrUpdate(product);

    }

    @SuppressWarnings({ "deprecation", "unchecked" })
    public List<Product> getProductListbycategory(String categoryId) {
	Session session = sessionFactory.openSession();
	session.beginTransaction();

	Criteria cr = session.createCriteria(Product.class);
	cr.add(Restrictions.like("categoryId", categoryId));

	List<Product> list = cr.list();

	return list;

    }

}
