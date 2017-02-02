package com.webApp.crud.dao;

import java.util.List;

import com.webApp.crud.entity.CustomerType;

public interface CustomerTypeDAO {

	public List<CustomerType> getCustomerTypes();

	public void saveCustomerType(CustomerType customerType);
}
