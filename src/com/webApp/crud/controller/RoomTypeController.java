package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webApp.crud.entity.RoomType;
import com.webApp.crud.service.RoomTypeService;

@Controller
@RequestMapping("/roomType")
public class RoomTypeController {

	// need to inject our customer service
	@Autowired
	private RoomTypeService roomTypeService;

	@GetMapping("/list")
	public String listRoomTypes(Model model) {

		List<RoomType> roomTypes = roomTypeService.getRoomTypes();

		model.addAttribute("roomTypes", roomTypes);

		return "list-roomTypes";
	}

	@GetMapping("/addRoomType")
	public String addRoomType(Model model) {

		RoomType roomType = new RoomType();

		model.addAttribute("roomType", roomType);

		return "roomType-form";
	}

	@PostMapping("/saveRoomType")
	public String saveRoomType(@ModelAttribute("roomType") RoomType roomType) {
		roomTypeService.saveRoomType(roomType);

		return "redirect:/roomType/list";
	}

}