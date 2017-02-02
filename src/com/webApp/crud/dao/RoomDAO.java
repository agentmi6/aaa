package com.webApp.crud.dao;

import java.util.List;

import com.webApp.crud.entity.Room;

public interface RoomDAO {

	public List<Room> getRooms();

	public void saveRoom(Room room);

}
