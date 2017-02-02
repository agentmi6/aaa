package com.webApp.crud.service;

import java.util.List;

import com.webApp.crud.entity.Room;

public interface RoomService {

	public List<Room> getRooms();

	public void saveRoom(Room room);

}
