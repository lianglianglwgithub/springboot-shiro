package com.lucheng.shirodemo.service.impl;

import com.lucheng.shirodemo.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

@Service
public class RedisServiceImpl implements RedisService {
    @Autowired
    public RedisTemplate redisTemplate;

//    public static final String

    @Override
    public void set(String key, Object object){
        redisTemplate.opsForValue().set(key, object);

    }

    @Override
    public Object get(String key){
        ValueOperations operations = redisTemplate.opsForValue();
        return operations.get(key);
    }

    @Override
    public void delete(String key) {
        redisTemplate.delete(key);
    }
}
