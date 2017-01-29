package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDAO;
import com.niit.model.Cart;
import com.niit.model.CartItem;


@Repository
	@Transactional
	public class CartItemDAOImpl implements CartItemDAO{

	    @Autowired
	    private SessionFactory sessionFactory;

	    public void addCartItem(CartItem cartItem) {
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cartItem);
	        session.flush();
	    }

	    public void removeCartItem (CartItem cartItem) {
	        Session session = sessionFactory.getCurrentSession();
	        session.delete(cartItem);
	        session.flush();
	    }

	    public void removeAllCartItems(Cart cart) {
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems) {
	            removeCartItem(item);
	        }
	    }

	    public CartItem getCartItemByItemId (int itemId) {
	        Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from CartItem where itemId = ?");
	        query.setInteger(0,itemId);
	        session.flush();

	        return (CartItem) query.uniqueResult();
	    }

		public List<CartItem> list() {
			List<CartItem> listCartItem = (List<CartItem>) sessionFactory.getCurrentSession()
					.createCriteria(CartItem.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return listCartItem;
		
		}

		
	}



