package com.niit.dao;

import java.util.List;

import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.User;



public interface OrderDAO {
	public boolean add(Product product, User user);	
	  public List<Order> getOrderListbyname(String username);
	  public Boolean remove(int orderId);
}
