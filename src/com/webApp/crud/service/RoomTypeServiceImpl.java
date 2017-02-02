package com.webApp.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webApp.crud.dao.RoomTypeDAO;
import com.webApp.crud.entity.RoomType;

@Service
public class RoomTypeServiceImpl implements RoomTypeService {

	@Autowired
	private RoomTypeDAO roomTypeDAO;

	@Override
	@Transactional
	public List<RoomType> getRoomTypes() {
		return roomTypeDAO.getRoomTypes();
	}

	@Override
	@Transactional
	public void saveRoomType(RoomType roomType) {
		roomTypeDAO.saveRoomType(roomType);

	}

}
