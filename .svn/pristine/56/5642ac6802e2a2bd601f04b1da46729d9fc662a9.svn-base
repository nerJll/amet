package com.aixu.meeting.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aixu.meeting.dao.AixuMeetandroomMapper;
import com.aixu.meeting.domain.AixuMeetandroom;
import com.aixu.meeting.domain.AixuMeetandroomExample;

/**
 * @author RenBowen
 * @date 2017/10/26 10:10:36
 * @since 1.0.0
 * @meeting
 */
@Service
public class MeetAndRoomService {
	
	@Autowired
	private AixuMeetandroomMapper meetAndRoomDAO;
	
	/**
	 * 根据Id查询会议与房间 Obj
	 * @param id 关联表Id
	 * @return 会议与房间 Obj
	 */
	public AixuMeetandroom getMeetAndRoomById(String id) {
		return meetAndRoomDAO.selectByPrimaryKey(id);
	}
	
	/**
	 * 根据会议室id查询会议id
	 */
	public List<String> getMeetIdsByRoomId(String roomId){
		AixuMeetandroomExample exp = new AixuMeetandroomExample();
		exp.createCriteria().andRoomIdEqualTo(roomId);
		List<AixuMeetandroom> meetandrooms = meetAndRoomDAO.selectByExample(exp);
		List<String> meetIds = new ArrayList<>();
		if(meetandrooms!=null){
			for(int i=0; i<meetandrooms.size(); i++){
				meetIds.add(meetandrooms.get(i).getMeetId());
			}
		}
		return meetIds;
	}
}
