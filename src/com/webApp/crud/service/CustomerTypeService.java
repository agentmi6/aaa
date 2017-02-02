package com.webApp.crud.service;

import java.util.List;

import com.webApp.crud.entity.CustomerType;

public interface CustomerTypeService {

	public List<CustomerType> getCustomerTypes();

	public void saveCustomerType(CustomerType customerType);

}
