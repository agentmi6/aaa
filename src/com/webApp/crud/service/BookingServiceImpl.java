package com.webApp.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webApp.crud.dao.BookingDAO;
import com.webApp.crud.entity.Booking;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	private BookingDAO bookingDAO;

	@Override
	@Transactional
	public List<Booking> getBookings() {
		return bookingDAO.getBookings();
	}

	@Override
	@Transactional
	public void saveBooking(Booking booking) {
		bookingDAO.saveBooking(booking);
	}

	@Override
	@Transactional
	public void updateRoomStatus(int roomId) {
		bookingDAO.updateRoomStatus(roomId);

	}

}
