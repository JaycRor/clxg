package com.zte.dao;

import java.util.List;

import com.zte.pojo.User;

public interface UserDao {
	public void saveUser(User user);
	

	public User checklogin(User user);
	
	public List<User> findAllUser();

}
