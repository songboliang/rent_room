package com.rentroom.service.impl;

import com.rentroom.dao.UserMapper;
import com.rentroom.pojo.User;
import com.rentroom.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

// 加载spring配置文件
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserServiceImplTest {

    @Autowired
    private IUserService userService;


    @Test
    public void selectUser() {
    }

    @Test
    public void saveUser() {
    }

    @Test
    public void getUserByPhone() {

        String phone = "18224535932";

        User user = userService.getUserByPhone(phone);

        System.out.println(user.getUsername());

    }
}