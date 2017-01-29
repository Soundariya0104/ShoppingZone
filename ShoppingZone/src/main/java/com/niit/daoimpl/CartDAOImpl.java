package com.niit.daoimpl;

import java.io.IOException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDAO;
import com.niit.model.Cart;
@Repository
@Transactional
public class CartDAOImpl implements CartDAO{
	 @Autowired
	    private SessionFactory sessionFactory;

	    @Autowired
	    private OrderDAO orderDAO;

	    public Cart getCartById (int cartId) {
	        Session session = sessionFactory.getCurrentSession();
	        return (Cart) session.get(Cart.class, cartId);
	    }

	    public void update(Cart cart) {
	        int cartId = cart.getCartId();
	        double grandTotal = orderDAO.getOrderGrandTotal(cartId);
	        cart.setGrandTotal(grandTotal);
             Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cart);
	    }

	    public Cart validate(int cartId) throws IOException {
	        Cart cart=getCartById(cartId);
	        if(cart==null||cart.getCartItems().size()==0) {
	            throw new IOException(cartId+"");
	        }
	        update(cart);
	        return cart;
	    }

		public List<Cart> getCartByUsername(String username) {
			String hql = "from Cart where username=" + "'" + username + "'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<Cart> listOfCart = query.list();
			return  listOfCart;
			}
	   
	 }
