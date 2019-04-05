package com.lucheng.shirodemo.service.impl;

import com.lucheng.shirodemo.dao.UserDao;
import com.lucheng.shirodemo.model.User;
import com.lucheng.shirodemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User getUserByName(String username) {
		return userDao.getUserByName(username);
	}
}
