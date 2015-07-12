package com.cpms.web.service;

import java.util.HashMap;

import com.cpms.web.dto.UserDto;

public interface UserService {
	UserDto login(HashMap<String,String>paramMap);
}
