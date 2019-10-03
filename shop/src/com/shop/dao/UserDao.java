package com.shop.dao;

import com.shop.bean.User;

public interface UserDao {
	public User queryUserByUsername(String username);
	public boolean addUser(User user);
}
