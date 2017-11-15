package com.aixu.meeting.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.aixu.meeting.dao.AikoDeptMapper;
import com.aixu.meeting.dao.AikoUserMapper;
import com.aixu.meeting.domain.AikoDept;
import com.aixu.meeting.domain.AikoUser;
import com.aixu.meeting.domain.AikoUserExample;

@Service
public class UserService {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private AikoUserMapper userDAO;
	
	@Autowired
	private AikoDeptMapper deptDAO;
	
	@Autowired
	private RedisTemplate redisTemplate;
	
	public List<AikoUser> listAllUser () {
		AikoUserExample example = new AikoUserExample();
		example.createCriteria().andStatusEqualTo(1);
		List<AikoUser> alUser = userDAO.selectByExample(example);
		for (AikoUser aikoUser : alUser) {
			AikoDept dept = deptDAO.selectByPrimaryKey(aikoUser.getDeptid());
			aikoUser.setDeptName(dept.getName());
		}
		return alUser;
	}
	
	/**
	 * 根据工号查询员工
	 * @param no
	 * @return
	 */
	public AikoUser getUserByNo(String no) {
		AikoUserExample example = new AikoUserExample();
		example.createCriteria().andUseridEqualTo(no);
		AikoUser aikoUser = userDAO.selectByExample(example).get(0);
		return aikoUser;
	}
}
 