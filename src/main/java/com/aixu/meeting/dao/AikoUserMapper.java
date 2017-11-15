package com.aixu.meeting.dao;

import com.aixu.meeting.domain.AikoUser;
import com.aixu.meeting.domain.AikoUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AikoUserMapper {
    int countByExample(AikoUserExample example);

    int deleteByExample(AikoUserExample example);

    int deleteByPrimaryKey(String id);

    int insert(AikoUser record);

    int insertSelective(AikoUser record);

    List<AikoUser> selectByExample(AikoUserExample example);

    AikoUser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") AikoUser record, @Param("example") AikoUserExample example);

    int updateByExample(@Param("record") AikoUser record, @Param("example") AikoUserExample example);

    int updateByPrimaryKeySelective(AikoUser record);

    int updateByPrimaryKey(AikoUser record);
}