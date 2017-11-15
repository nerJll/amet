package com.aixu.meeting.dao;

import com.aixu.meeting.domain.AikoDept;
import com.aixu.meeting.domain.AikoDeptExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AikoDeptMapper {
    int countByExample(AikoDeptExample example);

    int deleteByExample(AikoDeptExample example);

    int deleteByPrimaryKey(String id);

    int insert(AikoDept record);

    int insertSelective(AikoDept record);

    List<AikoDept> selectByExample(AikoDeptExample example);

    AikoDept selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") AikoDept record, @Param("example") AikoDeptExample example);

    int updateByExample(@Param("record") AikoDept record, @Param("example") AikoDeptExample example);

    int updateByPrimaryKeySelective(AikoDept record);

    int updateByPrimaryKey(AikoDept record);
}