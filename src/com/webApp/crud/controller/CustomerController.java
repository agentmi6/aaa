package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webApp.crud.entity.Customer;
import com.webApp.crud.entity.CustomerType;
import com.webApp.crud.service.CustomerService;
import com.webApp.crud.service.CustomerTypeService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;

	@Autowired
	private CustomerTypeService customerTypeService;

	@GetMapping("/list")
	public String listCustomers(Model model) {

		// get customers from the dao and types
		List<Customer> customers = customerService.getCustomers();

		// add the customers to the model(mvc spring)
		model.addAttribute("customers", customers);

		return "list-customers";
	}

	@GetMapping("/addCustomer")
	public String addCustomer(Model theModel) {

		Customer customer = new Customer();
		List<CustomerType> customerTypes = customerTypeService.getCustomerTypes();

		theModel.addAttribute("customer", customer);
		theModel.addAttribute("customerTypes", customerTypes);

		return "customer-form";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {

		// save the customer using our service
		customerService.saveCustomer(theCustomer);

		return "redirect:/customer/list";
	}
}