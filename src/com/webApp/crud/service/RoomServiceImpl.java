package com.webApp.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webApp.crud.dao.RoomDAO;
import com.webApp.crud.entity.Room;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDAO roomDAO;

	@Override
	@Transactional
	public List<Room> getRooms() {
		return roomDAO.getRooms();
	}

	@Override
	@Transactional
	public void saveRoom(Room room) {
		roomDAO.saveRoom(room);

	}
}
