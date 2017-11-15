package com.aixu.meeting.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aixu.meeting.domain.AikoUser;
import com.aixu.meeting.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("get-all-user")
	@ResponseBody
	public List<AikoUser> listAllUser() {
		ArrayList<AikoUser> fakerList = new ArrayList<AikoUser>();
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","采购部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","采购部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","采购部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","采购部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","采购部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","研发部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","研发部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","研发部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","研发部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","人事行政部"));
		fakerList.add(new AikoUser("djakdas", "djsakdsja", "1016046", "dasjkdhasjdk","jdaskdjks",1, "ajdkhasdjas","人事行政部"));
		// userService.listAllUser()	
		return fakerList;
	}
}
