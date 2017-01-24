package com.niit.dao;

import com.niit.model.User;

public interface UserDAO {
	public boolean validationRegistration(User user);

	public boolean validationLogin(String userName, String password);

	public boolean userDelete(String userName, String password);
	
	public User getById(String userName);

}
