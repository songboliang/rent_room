package com.rentroom.service.impl;


import com.rentroom.dao.UserMapper;
import com.rentroom.pojo.User;
import com.rentroom.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private UserMapper userMapper;

    public User selectUser(long userId) {
        return this.userMapper.selectUser(userId);
    }

    @Override
    public void saveUser(User user) {
        userMapper.saveUser(user);
    }

    @Override
    public User getUserByPhone(String phone) {
        return userMapper.getUserByPhone(phone);
    }

    @Override
    public User getUserByPhoneAndPassword(String phone, String password) {
        return userMapper.getUserByPhoneAndPassword(phone,password);
    }
}