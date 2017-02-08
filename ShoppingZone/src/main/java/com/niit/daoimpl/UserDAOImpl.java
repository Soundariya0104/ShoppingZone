package com.niit.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDAO;
import com.niit.model.User;

@Transactional
@EnableTransactionManagement
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

    Logger log = LoggerFactory.getLogger(UserDAOImpl.class);
	@Autowired(required = true)
	private SessionFactory sessionFactory;

	public UserDAOImpl() {

	}
	@SuppressWarnings("deprecation")
	public User validationLogin(String username, String password) {
		log.debug("inside validationLogin method");
	String hql = "from User where username ='" + username + "'  and password='" + password + "'";

	Query query = sessionFactory.getCurrentSession().createQuery(hql);
		log.debug("query executed");
	return (User) query.uniqueResult();

	}

	public boolean validationRegistration(User user) {
		log.debug("inside validation registration method");
	   Session session = sessionFactory.openSession();
	   Transaction trans = session.beginTransaction();

		session.saveOrUpdate(user);
	    trans.commit();
		session.close();

		return true;
	}

	public boolean userDelete(String username, String password) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		User User = new User();
		User.setUsername(username);
		User.setPassword(password);

		session.delete(User);
		session.getTransaction().commit();
		session.close();

		return true;
	}

    public User getById(String userName) {

	Session session = sessionFactory.openSession();
	session.beginTransaction();

	return (User) session.get(User.class, userName);
    }

   	
}