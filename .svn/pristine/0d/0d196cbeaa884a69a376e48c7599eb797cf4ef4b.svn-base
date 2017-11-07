package com.aixu.meeting.dao;

import com.aixu.meeting.domain.AixuMeetingroom;
import com.aixu.meeting.domain.AixuMeetingroomExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AixuMeetingroomMapper {
    int countByExample(AixuMeetingroomExample example);

    int deleteByExample(AixuMeetingroomExample example);

    int deleteByPrimaryKey(String meetRoomId);

    int insert(AixuMeetingroom record);

    int insertSelective(AixuMeetingroom record);

    List<AixuMeetingroom> selectByExample(AixuMeetingroomExample example);

    AixuMeetingroom selectByPrimaryKey(String meetRoomId);

    int updateByExampleSelective(@Param("record") AixuMeetingroom record, @Param("example") AixuMeetingroomExample example);

    int updateByExample(@Param("record") AixuMeetingroom record, @Param("example") AixuMeetingroomExample example);

    int updateByPrimaryKeySelective(AixuMeetingroom record);

    int updateByPrimaryKey(AixuMeetingroom record);
    
}