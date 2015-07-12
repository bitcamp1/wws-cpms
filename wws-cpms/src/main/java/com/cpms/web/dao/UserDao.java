package com.cpms.web.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.cpms.web.dto.UserDto;
import com.cpms.web.common.SqlSessionFactoryManager;

public interface UserDao {
	
	UserDto login(HashMap<String,String>paramMap);
	
}
