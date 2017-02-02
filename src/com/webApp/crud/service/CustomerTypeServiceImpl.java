package com.webApp.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webApp.crud.dao.CustomerTypeDAO;
import com.webApp.crud.entity.CustomerType;

@Service
public class CustomerTypeServiceImpl implements CustomerTypeService {

	@Autowired
	private CustomerTypeDAO customerTypeDAO;

	@Override
	@Transactional
	public List<CustomerType> getCustomerTypes() {
		return customerTypeDAO.getCustomerTypes();
	}

	@Override
	@Transactional
	public void saveCustomerType(CustomerType customerType) {
		customerTypeDAO.saveCustomerType(customerType);
	}

}
