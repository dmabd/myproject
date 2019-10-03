package com.shop.service.impl;

import com.shop.bean.User;
import com.shop.dao.UserDao;
import com.shop.service.UserService;

public class UserServiceImpl implements UserService{

	private UserDao dao;
	
	@Override
	public User queryUserByUsername(String username) {
		
		return dao.queryUserByUsername(username);
	}

	public UserDao getDao() {
		return dao;
	}

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean addUser(User user) {
		
		return dao.addUser(user);
	}
	
}
