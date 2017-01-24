package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.niit.dao.UserDAO;
import com.niit.model.User;

@Repository("userObjDAO")
public class UserDAOImpl implements UserDAO {
	
	Logger log=LoggerFactory.getLogger(UserDAOImpl.class);
	//--------------------------------------------login------------------------------------------------------//
	public boolean validationLogin(String username, String password) {
        log.info("Start of Login method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		boolean userFound = false;
		String sqlQuery = " from User as o where o.username=? and o.password=?";
		Query query = session.createQuery(sqlQuery);
		query.setParameter(0, username);
		query.setParameter(1, password);
		List list = query.list();
        log.debug("Query is executed");
		if ((list != null) && (list.size() > 0)) {
			userFound = true;
		}

		session.close();
		log.info("End of the Login method");

		return userFound;
		
	}
//---------------------------------------------register-------------------------------------------------//
	public boolean validationRegistration(User user) {

		log.info("Start of the Registration method");
		user.setUsername(user.getUsername());
		user.setEmailId(user.getEmailId());
		user.setEmailId(user.getPassword());
		user.setDob(user.getDob());
		user.setMobile(user.getMobile());
		user.setStreetname(user.getStreetname());
		user.setCityname(user.getCityname());
		user.setPinCode(user.getPinCode());

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(user);
		
		session.getTransaction().commit();
		session.close();
        log.info("End of the registration method");
		return true;
	}
//------------------------------------delete-----------------------------------------------------------//
	public boolean userDelete(String userName, String password) {
        log.info("start of the Delete method"); 
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		User User = new User();
		User.setUsername(userName);
		User.setPassword(password);

		session.delete(User);
		session.getTransaction().commit();
		session.close();
        log.info("end of the delete method");
		return true;
	}
//----------------------------------------------retrive id------------------------------------------------------//
	
	public User getById(String userName) {
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		return (User) session.get(User.class, userName);

	}
	public User getbyId(String userName) {
		log.debug("inside getbyid in userdaoimpl");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
        log.debug("query execute");
		String hql = "from User where id =" + "'" + userName + "'";
		Query query = session.createQuery(hql);

		List<User> list = (List<User>) query.list();
		if (list != null && !list.isEmpty()) {
			log.debug("end of the getById method");
			return list.get(0);
			
		}
		return null;
      }
	}