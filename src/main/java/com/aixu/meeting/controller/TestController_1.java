package com.aixu.meeting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aixu.meeting.service.RoomService;

@Controller
public class TestController_1 {
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping("mobile")
	public String toMobile(Model model) {
		return "mobile/index5";
	}
	
}
