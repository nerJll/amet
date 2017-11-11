package com.aixu.meeting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aixu.meeting.domain.AixuMeetandroom;
import com.aixu.meeting.domain.AixuMeeting;
import com.aixu.meeting.service.MeetAndRoomService;
import com.aixu.meeting.service.MeetService;
import com.github.pagehelper.PageInfo;


/** 
* @author Jianglinle
* @date 2017年11月10日 上午9:16:43 
* @version 1.0.0
*
*/

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private MeetService meetingService;
	@Autowired
	private MeetAndRoomService meetAndRoomService;
	
	@GetMapping("/index")
	public String index(@RequestParam(name = "status", defaultValue = "", required = false) String status,
			@RequestParam(name = "currentPage", defaultValue = "1", required = false) int currentPage,
			@RequestParam(name = "pageSize", defaultValue = "5", required = false) int pageSize, Model model){
		PageInfo<AixuMeeting> list = meetingService.findMeetingList(currentPage, pageSize, status);
		model.addAttribute("meets",list);
		//System.out.println(list);
		return "admin/index";
	}
	
	@GetMapping("/checkMeetInfo/{meetId}")
	public String checkMeetInfo(@PathVariable("meetId")String meetId,
			Model model){
		AixuMeeting meet = meetingService.getMeetById(meetId);
		List<AixuMeetandroom> meetAndRooms = meetAndRoomService.getMeetRoomByMeetId(meetId);
		Map<String,String[]> roomAndEmpMap = new HashMap<>(meetAndRooms.size());
		model.addAttribute("meetInfo",meet);
		for(AixuMeetandroom meetAndRoom : meetAndRooms){
			String roomId = meetAndRoom.getRoomId();
			String[] emps = meetAndRoom.getPersonNo().split(",");
			roomAndEmpMap.put(roomId, emps);
		}
		model.addAttribute("meet",meet);
		System.out.println(meet);
		model.addAttribute("roomAndEmpMap",roomAndEmpMap);
		for(Map.Entry<String,String[]> entry : roomAndEmpMap.entrySet()){
			 System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue()[0]);  
		}
		return "admin/checkMeetIndo";
	}
	
	/*@RequestMapping("/auditMeeting")
	public String listAllMeeting(@RequestParam(name = "status", required = false) String resOne,
			@RequestParam(name = "currentPage", defaultValue = "1", required = false) int currentPage,
			@RequestParam(name = "pageSize", defaultValue = "5", required = false) int pageSize, Model model) {
		Map<String,Object> map = new HashMap<String,Object>(1);
		map.put("resOne", resOne);
		map.put("meetType", "视频会议");
		PageInfo<Meeting> list = meetingService.findMeetingList(currentPage, pageSize,map);
		model.addAttribute("empmeet", list);
		return "admin/auditMeeting";
	}*/
}
 