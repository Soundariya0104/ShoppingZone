package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.OrderDAO;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.User;

@Repository("cartDAO")
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	Logger log = LoggerFactory.getLogger(OrderDAOImpl.class);

	//--------------------------------------------------add order------------------------------------------//
	public boolean add(Product product, User user, int quantity, int total) {
		log.debug("inside add order method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Order order = new Order();
		order.setUser(user);
		order.setProduct(product);
		order.setQuantity(quantity);
		order.setTotal(total);
		session.saveOrUpdate(order);
		session.getTransaction().commit();
		session.close();
        log.debug("end add order method");
		return true;
	}

	//-------------------------------------------------list order-------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Order> getOrderListbyname(String username) {
		log.debug("inside list order method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Order.class);
		cr.add(Restrictions.like("user.username", username));
		List<Order> list = cr.list();
        log.debug("end of list order method");
		return list;

	}
	
    //-----------------------------------------------remove order--------------------------------------------//
	public Boolean remove(int orderId) {
        log.debug("inside removeorder method");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Order orderModel = new Order();
		orderModel.setOrderId(orderId);
		session.delete(orderModel);
		session.getTransaction().commit();
		session.close();
        log.debug("end of remove ordermethod");
		return true;

	}

	//---------------------------------------------removeorderbycartid----------------------------------------//
	public void removeorderbycartid(String username) {
        log.debug("inside removeordercartbyid");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		@SuppressWarnings("rawtypes")
		Query q = session.createQuery("delete Order where username = username");
		q.executeUpdate();
		session.getTransaction().commit();
		session.close();
		log.debug("end of removeorderbycartid");

	}
	
	@Transactional
    @SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	public boolean addingproduct(String username, String productId, int quantity) {
    	log.debug("inside getByName in categoryDAOImpl");
    	Session session = sessionFactory.openSession();
		session.beginTransaction();

    	String hql = "from Order where username =" + "'" + username + "'"+" and productId =" + "'" + productId+"'";
	Query<Order> query = sessionFactory.getCurrentSession().createQuery(hql);
	List<Order> list = (List<Order>) query.list();
	if (list != null && !list.isEmpty()) {
		
		
		
		
		quantity=query.uniqueResult().getQuantity()+quantity;
		
		int orderId=query.uniqueResult().getOrderId();
		Query query1 = session.createQuery("update Order set quantity = :quantity " +
				" where orderid = :orderid");
	query1.setParameter("quantity", quantity);
	
query1.setParameter("orderid", orderId);
query1.executeUpdate();
			session.getTransaction().commit();
			session.close();
		
		return true;
	}
		else{
	   
		session.getTransaction().commit();
		session.close();
	   return false;
	}	}

}
