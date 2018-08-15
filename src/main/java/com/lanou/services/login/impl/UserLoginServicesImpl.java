package com.lanou.services.login.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanou.entity.User;
import com.lanou.mapper.UserMapper;
import com.lanou.services.login.UserLoginServices;
@Service("userLoginServices")
public class UserLoginServicesImpl implements UserLoginServices {
	
	@Resource
	private UserMapper userMapper;
	
	public User login(String username,String password) {
		
		return userMapper.login(username);
	}

}
