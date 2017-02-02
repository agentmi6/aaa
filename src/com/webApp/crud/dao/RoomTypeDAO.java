package com.webApp.crud.dao;

import java.util.List;

import com.webApp.crud.entity.RoomType;

public interface RoomTypeDAO {

	public List<RoomType> getRoomTypes();

	public void saveRoomType(RoomType roomType);

}
