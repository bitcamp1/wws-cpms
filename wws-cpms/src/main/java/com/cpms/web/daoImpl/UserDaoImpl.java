package com.cpms.web.daoImpl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.UserDao;
import com.cpms.web.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	
	
	@Override
	public UserDto login(HashMap<String,String>paramMap) {
		UserDto user = new UserDto();
	
		SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
		
		user = (UserDto)session.selectOne("UserMappper.login", paramMap);
		
		return user;
	}

}
