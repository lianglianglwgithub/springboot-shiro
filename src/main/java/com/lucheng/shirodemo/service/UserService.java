package com.lucheng.shirodemo.service;

import com.lucheng.shirodemo.model.User;

public interface UserService {
	/**
	 * 通过用户名获取用户基本信息
	 * @param username
	 * @return
	 */
	User getUserByName(String username);

}
