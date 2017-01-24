package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDAO {
	public boolean addCategory(Category category);

	public boolean deleteCategory(String categoryId);

	public List<Category> getCategoryList();
	
	public Category getById(String username);
}
