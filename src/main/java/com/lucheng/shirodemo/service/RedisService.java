package com.lucheng.shirodemo.service;

public interface RedisService {
    void set(String key, Object object);

    Object get(String key);

    void delete(String key);
}
