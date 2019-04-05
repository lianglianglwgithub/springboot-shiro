package com.lucheng.shirodemo.controller;

import com.lucheng.shirodemo.model.User;
import com.lucheng.shirodemo.service.RedisService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    public RedisService redisService;

    private static final String username_key = "lucheng";

    @GetMapping("/login")
    public String login(User user){
        Subject subject = SecurityUtils.getSubject();

        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            subject.login(token);
        } catch (AuthenticationException e) {
            return e.getMessage();
        }
        if (subject.hasRole("1")) {
            return "管理员";
        }
        return "用户";
    }

    @GetMapping("/getUserName")
    public User testRole1(){
        User user = (User) redisService.get(username_key);
        if (null == user) {
            return null;
        }
        return user;
    }

    @GetMapping("/setUserName")
    public void testRole2(String username, String password){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        redisService.set(username_key, user);
    }

}
