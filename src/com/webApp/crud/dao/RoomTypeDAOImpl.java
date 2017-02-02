package com.webApp.crud.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webApp.crud.entity.RoomType;

@Repository
public class RoomTypeDAOImpl implements RoomTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<RoomType> getRoomTypes() {

		Session session = sessionFactory.getCurrentSession();

		Query<RoomType> query = session.createQuery("from RoomType", RoomType.class);

		List<RoomType> roomTypes = query.getResultList();

		return roomTypes;
	}

	@Override
	public void saveRoomType(RoomType roomType) {

		Session session = sessionFactory.getCurrentSession();

		session.save(roomType);

	}

}
