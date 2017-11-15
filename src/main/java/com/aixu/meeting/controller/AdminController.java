package com.aixu.meeting.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aixu.meeting.dao.AixuMeetingMapper;
import com.aixu.meeting.domain.AixuMeetandroom;
import com.aixu.meeting.domain.AixuMeeting;
import com.aixu.meeting.service.MeetAndRoomService;
import com.aixu.meeting.service.MeetService;
import com.aixu.meeting.service.RoomService;
import com.aixu.meeting.utils.MeetingVo;
import com.aixu.meeting.utils.WeChatUtil;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;


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
	@Autowired
	private RoomService roomService;
	@Autowired
	private AixuMeetingMapper meetMapper;

	@GetMapping("/index")
	public String index(@RequestParam(name = "status", defaultValue = "", required = false) String status,
			@RequestParam(name = "currentPage", defaultValue = "1", required = false) int currentPage,
			@RequestParam(name = "pageSize", defaultValue = "5", required = false) int pageSize, Model model) {
		PageInfo<AixuMeeting> list = meetingService.findMeetingList(currentPage, pageSize, status);
		model.addAttribute("meets", list);
		// System.out.println(list);
		return "admin/index";
	}

	@GetMapping("/checkMeetInfo/{meetId}")
	public String checkMeetInfo(@PathVariable("meetId") String meetId, Model model) {
		AixuMeeting meet = meetingService.getMeetById(meetId);
		List<AixuMeetandroom> meetAndRooms = meetAndRoomService.getMeetRoomByMeetId(meetId);
		List<MeetingVo> mvs = new ArrayList<>();
		model.addAttribute("meet", meet);
		// Map<会议室名称,Map<人员工号,人员姓名>>
		List<String> empsNos = new ArrayList<>();
		model.addAttribute("meetInfo", meet);
		for (AixuMeetandroom meetAndRoom : meetAndRooms) {
			String roomId = meetAndRoom.getRoomId();
			String roomName = roomService.getRoomById(roomId).getMeetRoomName();
			String empsNo = meetAndRoom.getPersonNo();
			String empsName = meetAndRoom.getPersonNames();
			MeetingVo mvo = new MeetingVo(roomName, empsNo, empsName);
			mvs.add(mvo);
			//System.out.println(empsNo);
			//System.out.println(empsName);
			// empNoAndNa.put(empsNo, empsName);
			// empNoAndNa.clear();
		}
		model.addAttribute("roomAndEmpList", mvs);
		model.addAttribute("empsNos", empsNos);
		return "admin/checkMeetInfo";
	}

	@PostMapping("/sendInfo")
	public String sendInfo(@RequestParam("meetId") String meetId,
			@RequestParam("pubInfo") String pubInfo, 
			@RequestParam("secInfo") String secInfo) {
		//System.out.println(pubInfo + secInfo);
		String[] secInfos = secInfo.split("\\*");
		/*for (String sifo : secInfos) {
			System.out.println(sifo);
		}*/
		String[] roomNames = secInfos[0].split(",");
		String[] empNos = secInfos[1].split(",");
		String[] empNames = secInfos[2].split(",");
		String[] accounts = secInfos[3].split(",");
		String[] passwords = secInfos[4].split(",");
		String syxx = "私有信息\n";
		String hysmc = "会议室名称：";
		String chryxm = "本会议室人员：";
		String dlzh = "登陆账号：";
		String dlmm = "登陆密码：";
		String syxxz = "";
		System.out.println("发送数据");
		for (int i = 0; i < roomNames.length; i++) {
			hysmc += roomNames[i] + "\n";
			chryxm += empNames[i] + "\n";
			dlzh += accounts[i] + "\n";
			dlmm += passwords[i] + "\n";
			syxxz += syxx + hysmc + chryxm + dlzh + dlmm;
			String[] empNos1 = empNos[i].split(" ");
			for (int k = 0; k < empNos1.length; k++) {
				System.out.println(empNos1[k]);  //接收人工号
				System.out.println(pubInfo + syxxz);	//接收信息
				WeChatUtil.weChatPush(empNos1[k], pubInfo + syxxz); //消息推送
			}
			hysmc = "会议室名称：";
			chryxm = "本会议室人员：";
			dlzh = "登陆账号：";
			dlmm = "登陆密码：";
			syxxz = "";
		}
		AixuMeeting meet = meetingService.getMeetById(meetId);
		meet.setMeetState("已通过");
		meetMapper.updateByPrimaryKeySelective(meet);
		return "redirect:/admin/index";
	}
}
