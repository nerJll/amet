package com.aixu.meeting.dao;

import com.aixu.meeting.domain.AixuMeetandroom;
import com.aixu.meeting.domain.AixuMeetandroomExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AixuMeetandroomMapper {
    int countByExample(AixuMeetandroomExample example);

    int deleteByExample(AixuMeetandroomExample example);

    int deleteByPrimaryKey(String id);

    int insert(AixuMeetandroom record);

    int insertSelective(AixuMeetandroom record);

    List<AixuMeetandroom> selectByExample(AixuMeetandroomExample example);

    AixuMeetandroom selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") AixuMeetandroom record, @Param("example") AixuMeetandroomExample example);

    int updateByExample(@Param("record") AixuMeetandroom record, @Param("example") AixuMeetandroomExample example);

    int updateByPrimaryKeySelective(AixuMeetandroom record);

    int updateByPrimaryKey(AixuMeetandroom record);
}