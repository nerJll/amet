package com.aixu.meeting.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aixu.meeting.domain.AixuMeeting;
import com.aixu.meeting.domain.AixuMeetingroom;
import com.aixu.meeting.service.MeetAndRoomService;
import com.aixu.meeting.service.MeetService;
import com.aixu.meeting.service.RoomService;
import com.aixu.meeting.utils.IDUtils;

@Controller
@RequestMapping("meet")
public class MeetController {
	@Autowired
	private MeetService meetService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private MeetAndRoomService meetAndRoomService;
	
	/**
	 * 新增会议
	 * @param meet 会议Obj
	 * @return
	 */
	@RequestMapping("save-meet")
	public String saveMeet(AixuMeeting meet, HttpServletRequest req) {
		String meetId = IDUtils.getUuid(true);
		String[] nos = req.getParameterValues("gonghao");
		meetService.saveMeet(meet,meetId);
		String meetRoomIds = meet.getMeetRoomId();
		String[] rooms = meetRoomIds.split(",");
		for (int i = 0; i < rooms.length; i++) {
			meetAndRoomService.saveMeetAndRoom(meetId, rooms[i], nos[i].trim());
		}
		return "redirect:/meet/index";
	}
	
	/**
	 * 条件查询会议室
	 * @return
	 */
	@RequestMapping("list-meet")
	@ResponseBody
	public List<AixuMeetingroom> listMeet(@RequestParam(name = "staTime") String staTime, @RequestParam(name = "endTime") String endTime) {
		return meetService.listMeetByTime(staTime, endTime);
	}

	@GetMapping("/index")
	public String index(){
		return "meet/index";
	}
	
	@PostMapping("list-none-room")
	@ResponseBody
	public List<?> listNoneRoom (@RequestParam(name = "roomIds", required = false)String roomIds, 
			HttpServletRequest req,
			@RequestParam(name = "staTime", required = false)String staTime, 
			@RequestParam(name = "endTime",  required = false)String endTime) {
		List<AixuMeetingroom> rooms = meetService.listMeetByTime(staTime, endTime);
		//System.out.println(rooms.size());
		List<String> conflictRooms = new ArrayList<String>();
		String[] roomIdArr = roomIds.split(",");
		for (String id : roomIdArr) {
			for (AixuMeetingroom room : rooms) {
				if (id.equals(room.getMeetRoomId())) {
					conflictRooms.add(room.getMeetRoomName());
				}
			}
		}
		return conflictRooms;
	}
	
}
  