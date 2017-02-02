package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webApp.crud.entity.Booking;
import com.webApp.crud.entity.Customer;
import com.webApp.crud.entity.Room;
import com.webApp.crud.service.BookingService;
import com.webApp.crud.service.CustomerService;
import com.webApp.crud.service.RoomService;

@Controller
@RequestMapping("/booking")
public class BookingController {

	@Autowired
	private BookingService bookingService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private RoomService roomService;

	@GetMapping("/list")
	public String listBookings(Model model) {

		List<Booking> bookings = bookingService.getBookings();
		model.addAttribute("bookings", bookings);

		return "list-bookings";
	}

	@GetMapping("/addBooking")
	public String addBooking(Model model) {

		Booking booking = new Booking();
		List<Customer> customers = customerService.getCustomers();
		List<Room> rooms = roomService.getRooms();

		model.addAttribute("booking", booking);
		model.addAttribute("rooms", rooms);
		model.addAttribute("customers", customers);

		return "booking-form";
	}

	@PostMapping("/saveBooking")
	public String saveBooking(@ModelAttribute("booking") Booking booking) {

		bookingService.saveBooking(booking);

		return "redirect:/booking/list";
	}

	@GetMapping("/tableBookingList")
	public String tableBookingList(Model model) {

		List<Booking> bookings = bookingService.getBookings();
		model.addAttribute("bookings", bookings);

		return "list-tableBookings";
	}

	@GetMapping("/addTableBooking")
	public String addTableBooking(Model model) {

		Booking booking = new Booking();

		List<Customer> customers = customerService.getCustomers();
		List<Room> rooms = roomService.getRooms();

		model.addAttribute("booking", booking);
		model.addAttribute("rooms", rooms);
		model.addAttribute("customers", customers);

		return "table-bookingForm";
	}

	@PostMapping("/saveTableBooking")
	public String saveTableBooking(@ModelAttribute("booking") Booking booking,
			@RequestParam("room.roomId") int roomId) {

		int roomNumber = roomId;
		bookingService.updateRoomStatus(roomNumber);
		bookingService.saveBooking(booking);

		return "redirect:/booking/list";

	}

}
