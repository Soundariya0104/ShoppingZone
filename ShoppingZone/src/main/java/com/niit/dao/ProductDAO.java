package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);

	public boolean deleteProduct(String productId);

	public List<Product> getProductList();
	
	public Product getById(String ProductId);
}
