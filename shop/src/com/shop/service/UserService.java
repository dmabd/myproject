package com.shop.service;

import com.shop.bean.User;

public interface UserService {
	public User queryUserByUsername(String username);
	public boolean addUser(User user);
}
