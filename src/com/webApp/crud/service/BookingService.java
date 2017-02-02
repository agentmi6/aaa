package com.webApp.crud.service;

import java.util.List;

import com.webApp.crud.entity.Booking;

public interface BookingService {

	public List<Booking> getBookings();

	public void saveBooking(Booking booking);

	public void updateRoomStatus(int roomId);

}
