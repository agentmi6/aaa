package com.webApp.crud.service;

import java.util.List;

import com.webApp.crud.entity.RoomType;

public interface RoomTypeService {

	public List<RoomType> getRoomTypes();

	public void saveRoomType(RoomType roomType);

}
