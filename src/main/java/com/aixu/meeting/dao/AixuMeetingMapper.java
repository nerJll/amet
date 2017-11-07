package com.aixu.meeting.dao;

import com.aixu.meeting.domain.AixuMeeting;
import com.aixu.meeting.domain.AixuMeetingExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AixuMeetingMapper {
	int countByExample(AixuMeetingExample example);

	int deleteByExample(AixuMeetingExample example);

	int deleteByPrimaryKey(String meetId);

	int insert(AixuMeeting record);

	int insertSelective(AixuMeeting record);

	List<AixuMeeting> selectByExample(AixuMeetingExample example);

	AixuMeeting selectByPrimaryKey(String meetId);

	int updateByExampleSelective(@Param("record") AixuMeeting record, @Param("example") AixuMeetingExample example);

	int updateByExample(@Param("record") AixuMeeting record, @Param("example") AixuMeetingExample example);

	int updateByPrimaryKeySelective(AixuMeeting record);

	int updateByPrimaryKey(AixuMeeting record);

	List<AixuMeeting> selectByTime(@Param("params") Map<String, Object> params);
}