package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webApp.crud.entity.CustomerType;
import com.webApp.crud.service.CustomerTypeService;

@Controller
@RequestMapping("/customerType")
public class CustomerTypeController {

	@Autowired
	private CustomerTypeService customerTypeService;

	@GetMapping("/list")
	public String listCustomerTypes(Model model) {

		// get the customerTypes from the service
		List<CustomerType> customerTypes = customerTypeService.getCustomerTypes();

		// add the customerTypes to the model
		model.addAttribute("customerTypes", customerTypes);

		return "list-customerTypes";

	}

	@GetMapping("/addCustomerTypesForm")
	public String addCustomerTypesForm(Model model) {

		// create customertype and add it to the model
		CustomerType customerType = new CustomerType();

		model.addAttribute("customerType", customerType);

		return "customerType-form";
	}

	@PostMapping("/saveCustomerType")
	public String saveCustomerType(@ModelAttribute("customerType") CustomerType customerType) {

		// save the customer type;
		customerTypeService.saveCustomerType(customerType);

		return "redirect:/customerType/list";

	}
}
