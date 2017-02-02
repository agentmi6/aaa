package com.webApp.crud.service;

import java.util.List;

import com.webApp.crud.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
