package com.webApp.crud.dao;

import java.util.List;
import com.webApp.crud.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
