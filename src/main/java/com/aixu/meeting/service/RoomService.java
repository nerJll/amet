package com.aixu.meeting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aixu.meeting.dao.AixuMeetingroomMapper;
import com.aixu.meeting.domain.AixuMeetingroom;
import com.aixu.meeting.domain.AixuMeetingroomExample;
import com.aixu.meeting.utils.IDUtils;

/**
 * @author RenBowen
 * @date 2017/10/26 9:52:36
 * @since 1.0.0
 * @meeting
 */
@Service
public class RoomService {
	
	@Autowired
	private AixuMeetingroomMapper roomDAO;
	
	/**
	 * 根据Id查询会议室
	 * @param id 会议室Id
	 * @return 会议室Obj
	 */
	public AixuMeetingroom getRoomById(String id) {
		return roomDAO.selectByPrimaryKey(id);
	}
	
	/**
	 * 条件查询会议室
	 * @param example 查询条件
	 * @return 会议室list集合
	 */
	public List<AixuMeetingroom> listRoom(AixuMeetingroomExample example) {
		return roomDAO.selectByExample(example);
	}
	
	/**
	 * 添加会议室
	 * @param room 会议室Obj
	 */
	@Transactional
	public void saveRoom(AixuMeetingroom room) {
		String id = IDUtils.getUuid(true);
		room.setMeetRoomId(id);
		room.setMeetRoomState("空闲");
		roomDAO.insertSelective(room);
	}
	
	/**
	 * 条件更新会议室
	 * @param room 会议室Obj
	 */
	@Transactional
	public void updateRoom(AixuMeetingroom room) {
		roomDAO.updateByPrimaryKeySelective(room);
	}
	
	/**
	 * 删除会议室
	 * @param id 会议室Id
	 */
	@Transactional
	public void deleteRoom(String id) {
		roomDAO.deleteByPrimaryKey(id);
	}
	
}
