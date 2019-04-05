package com.lucheng.shirodemo.dao;

import com.lucheng.shirodemo.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    /**
     * 通过用户名获取用户基本信息
     * @param username
     * @return
     */
    User getUserByName(String username);

}
