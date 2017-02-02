package com.webApp.crud.dao;

import java.util.List;

import com.webApp.crud.entity.Booking;

public interface BookingDAO {

	public List<Booking> getBookings();

	public void saveBooking(Booking booking);

	public void updateRoomStatus(int roomId);

}
