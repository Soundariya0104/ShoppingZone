package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.niit.dao.SupplierDAO;
import com.niit.model.Product;
import com.niit.model.Supplier;

public class SupplierDAOImpl implements SupplierDAO {
	Logger log=LoggerFactory.getLogger(SupplierDAOImpl.class);
//------------------------------------------add-------------------------------------------------------//
	public boolean addSupplier(Supplier supplier) {
		log.debug("start of the add supplier method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(supplier);

		session.getTransaction().commit();
		session.close();
        log.debug("end of the add supplier method");
		return true;

	}
//--------------------------------------------------delete---------------------------------------------//
	public boolean deleteSupplier(String supplierId) {
		log.debug("start of the delete supplier method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Supplier supplierModel = new Supplier();
		supplierModel.setSupplierId(supplierId);

		session.delete(supplierModel);
		session.getTransaction().commit();
		session.close();
        log.debug("end of the delete supplier method");
		return true;

	}
//--------------------------------------------------retrieve id-------------------------------------------------------//
	public Supplier getById(String supplierId) {
		log.debug("start of the getbyid method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String hql = "from supplier where id =" + "'" + supplierId + "'";
		Query query = session.createQuery(hql);

		List<Supplier> list = (List<Supplier>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		log.debug("end of the getbyid method");
		return null;
	}
//---------------------------------------list---------------------------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Supplier> getSupplierList() {
		log.debug("start of the list method");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Supplier> list = (List<Supplier>) session.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        log.debug("end of the list method");
		return list;

	}

}
