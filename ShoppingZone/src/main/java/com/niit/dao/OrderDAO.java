package com.niit.dao;

import java.util.List;

import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.User;

public interface OrderDAO {
	public boolean add(Product product, User user, int quantity, int total);

	public List<Order> getOrderListbyname(String username);

	public Boolean remove(int orderId);

	public void removeorderbycartid(String username);
	
    public boolean addingproduct(String username, String productId, int quantity);
}
