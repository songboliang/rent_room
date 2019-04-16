package com.rentroom.service.impl;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentroom.dao.UserMapper;
import com.rentroom.pojo.Room;
import com.rentroom.pojo.User;
import com.rentroom.service.IUserService;
import com.rentroom.utils.Bean.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public void updateUserPwd(User user) {
        userMapper.updateUserPwd(user);
    }

    @Override
    public PageBean findAll(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode,pageSize);
        Page<User> page = userMapper.findAll();
        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());

    }

    @Override
    public int  updateUser(User user) {
         return userMapper.updateUser(user);
    }
}