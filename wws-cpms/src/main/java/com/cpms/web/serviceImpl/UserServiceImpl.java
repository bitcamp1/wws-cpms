package com.cpms.web.serviceImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.UserDao;
import com.cpms.web.dto.UserDto;
import com.cpms.web.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	public UserDto login(HashMap<String,String>paramMap) {
		return userDao.login(paramMap);
	}

}
