package com.webApp.crud.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webApp.crud.entity.CustomerType;

@Repository
public class CustomerTypeDAOImpl implements CustomerTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<CustomerType> getCustomerTypes() {

		// get the current session
		Session session = sessionFactory.getCurrentSession();

		// create a query
		Query<CustomerType> query = session.createQuery("from CustomerType", CustomerType.class);

		// get results
		List<CustomerType> customerTypes = query.getResultList();

		// return results
		return customerTypes;
	}

	@Override
	public void saveCustomerType(CustomerType customerType) {

		Session session = sessionFactory.getCurrentSession();

		session.save(customerType);

	}

}
