package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webApp.crud.entity.Room;
import com.webApp.crud.entity.RoomType;
import com.webApp.crud.service.RoomService;
import com.webApp.crud.service.RoomTypeService;

@Controller
@RequestMapping("/room")
public class RoomController {

	@Autowired
	private RoomService roomService;

	@Autowired
	private RoomTypeService roomTypeService;

	@GetMapping("/list")
	public String listRooms(Model model) {

		List<Room> rooms = roomService.getRooms();

		model.addAttribute("rooms", rooms);

		return "list-rooms";

	}

	@GetMapping("/addRoom")
	public String addRoom(Model model) {

		Room room = new Room();
		List<RoomType> roomTypes = roomTypeService.getRoomTypes();

		model.addAttribute("room", room);
		model.addAttribute("roomTypes", roomTypes);

		return "room-form";
	}

	@PostMapping("/saveRoom")
	public String saveRoom(@ModelAttribute("room") Room room) {
		roomService.saveRoom(room);

		return "redirect:/room/list";
	}

}
