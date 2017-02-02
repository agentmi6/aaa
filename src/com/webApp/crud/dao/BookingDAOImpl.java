package com.webApp.crud.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webApp.crud.entity.Booking;

@Repository
public class BookingDAOImpl implements BookingDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Booking> getBookings() {

		Session session = sessionFactory.getCurrentSession();

		Query<Booking> query = session.createQuery("from Booking", Booking.class);

		List<Booking> bookings = query.getResultList();

		return bookings;
	}

	@Override
	public void saveBooking(Booking booking) {
		Session session = sessionFactory.getCurrentSession();

		session.save(booking);

	}

	@Override
	public void updateRoomStatus(int roomId) {

		Session session = sessionFactory.getCurrentSession();

		Query query = session.createQuery("update Room set room_available = false where room_id = :roomNumber");
		query.setParameter("roomNumber", roomId);
		query.executeUpdate();

	}

}
