package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
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

	//------------------------------------------addproduct---------------------------------------------//
	public boolean addProduct(Product product) {
		log.debug("inside add product method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();
        log.debug("end of add product method");
		return true;
	}

	//-------------------------------------------deleteproduct-------------------------------------------//
	public boolean deleteProduct(String productId) {
		log.debug("inside delete product method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product product = new Product();
		product.setProductId(productId);
		session.delete(product);
		session.getTransaction().commit();
		session.close();
        log.debug("end of deleteproduct method");
		return true;
	}

	//---------------------------------------------get product list---------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductList() {
		log.debug("inside list product");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Product> list = (List<Product>) session.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        log.debug("end of list product");
		return list;

	}

	// -------------------------Retrieve by Id---------------------------------------------------------------//
	public Product getById(String productId) {
		log.debug("inside getbyId");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		log.debug("before query");
		System.out.println("am inside before query getbyid");
		return session.get(Product.class, productId);

	}

	// -----------------------------------saveOrUpdate-------------------------------------------------------//
	@Transactional
	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}

	//------------------------------------get product list by category---------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductListbycategory(String categoryId) {
		log.debug("inside get product list by category ");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Product.class);
		cr.add(Restrictions.like("categoryId", categoryId));
		List<Product> list = cr.list();
        log.debug("end pf product list by category");
		return list;

	}

	//-------------------------------------------------------get product list by category--------------------------------------------------------------------------------------------
    @SuppressWarnings({ "deprecation", "unchecked" })
    public List<Product> getProductListbytag(String tag) {
    	log.debug("inside getproductListbycategory in ProductDAOImpl");
    	Session session = sessionFactory.openSession();
    	session.beginTransaction();
    	Criteria cr = session.createCriteria(Product.class);  //The Criteria API provides the org.hibernate.criterion.Projections class which can be used to get average, maximum or minimum of the property values. 
    	//cr.add(Restrictions.like("tags1",tag)).add(Restrictions.like("tags2", tag));
    	//Restrictions provide certain conditions for query
   	Criterion tags1=Restrictions.like("tags1",tag);
   	Criterion tags2=Restrictions.like("tags2",tag);
   	Criterion tags3=Restrictions.like("tags3",tag);
   	Criterion tags4=Restrictions.like("tags4",tag);
   	Criterion tags5=Restrictions.like("tags5",tag);
   	
   	Disjunction orExp = Restrictions.or(tags1, tags2,tags3,tags4,tags5);
   	cr.add(orExp);
   	List<Product> list = cr.list();
    	log.debug("leaving addproduct in ProductDAOImpl");
	return list;
    }

}
