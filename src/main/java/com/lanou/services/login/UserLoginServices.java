package com.lanou.services.login;

import com.lanou.entity.User;

public interface UserLoginServices {

	public User login(String username,String password);
}
