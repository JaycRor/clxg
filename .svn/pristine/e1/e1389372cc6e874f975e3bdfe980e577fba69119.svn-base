package com.zte.service.impl;

import java.util.List;

import com.zte.dao.UserDao;
import com.zte.pojo.User;
import com.zte.service.UserService;

public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.saveUser(user);
		
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User checklogin(User user) {
		return this.userDao.checklogin(user);
	}

	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return this.userDao.findAllUser();
	}

	
}
