package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.OrderDAO;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.User;



@Repository("cartDAO")
public class OrderDAOImpl implements OrderDAO {

	
	  @Autowired
	    SessionFactory sessionFactory;

	  public boolean add(Product product, User user, int quantity, int total) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
		
			
			Order order= new Order();
		order.setUser(user);
		order.setProduct(product);
		order.setQuantity(quantity);
		order.setTotal(total);	
		
			session.saveOrUpdate(order);

			session.getTransaction().commit();
			session.close();

			return true;
		}


	    @SuppressWarnings({ "deprecation", "unchecked" })
	    public List<Order> getOrderListbyname(String username) {
	 	Session session = sessionFactory.openSession();
		session.beginTransaction();

		Criteria cr = session.createCriteria(Order.class);
		cr.add(Restrictions.like("user.username", username));

		List<Order> list = cr.list();

		return list;

	    }
	    
	    public Boolean remove(int orderId){
	    	
	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			Order orderModel= new Order();
			orderModel.setOrderId(orderId);
			session.delete(orderModel);
			session.getTransaction().commit();
			session.close();

			return true;

	    }

	    public void removeorderbycartid(String username){


	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			
	    	@SuppressWarnings("rawtypes")
			Query q = session.createQuery("delete OrderModel where username = username");
	    	q.executeUpdate();
	    	session.getTransaction().commit();
			session.close();


	    }


}
