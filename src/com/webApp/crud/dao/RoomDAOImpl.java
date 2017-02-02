package com.webApp.crud.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webApp.crud.entity.Room;

@Repository
public class RoomDAOImpl implements RoomDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Room> getRooms() {

		Session session = sessionFactory.getCurrentSession();

		Query<Room> query = session.createQuery("from Room", Room.class);

		List<Room> rooms = query.getResultList();

		return rooms;
	}

	@Override
	public void saveRoom(Room room) {
		Session session = sessionFactory.getCurrentSession();

		session.save(room);

	}

}
