package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;

	// ---------------------------------------add & edit
	// Supplier------------------------------------//
	public boolean addSupplier(Supplier supplier) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(supplier);

		session.getTransaction().commit();
		session.close();

		return true;

	}

	// ---------------------------------------delete
	// Supplier----------------------------------------//
	public boolean deleteSupplier(String supplierId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Supplier supplier = new Supplier();
		supplier.setSupplierId(supplierId);

		session.delete(supplier);
		session.getTransaction().commit();
		session.close();

		return true;

	}

	// ----------------------------------------------retrieve by
	// Id------------------------------------//
	public Supplier getById(String supplierId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		return session.get(Supplier.class, supplierId);
	}

	// --------------------------------------------list
	// Supplier----------------------------------------//
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Supplier> getSupplierList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<Supplier> list = (List<Supplier>) session.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}

	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);

	}

	// --------------------------------------------get by
	// Name-------------------------------------------------------------
	@SuppressWarnings("deprecation")
	@Transactional
	public Supplier getByName(String name) {
		String hql = "from Supplier where name =" + "'" + name + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

}
