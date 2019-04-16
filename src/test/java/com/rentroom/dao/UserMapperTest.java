package com.rentroom.dao;


import com.rentroom.pojo.User;
import com.rentroom.utils.RentConst;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

// 加载spring配置文件
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserMapperTest {

    @Autowired
    private UserMapper dao;

    @Test
    public void testSelectUser() throws Exception {
        long id = 1;
        User user = dao.selectUser(id);
        System.out.println(user.getUsername());
    }


    @Test
    public void testSaveUser() {
        User user =new User();
        user.setPhone("18224535932");
        user.setPassword("123456aa");
        user.setUsername("宋博良");
        user.setRole(RentConst.Role.root);
        user.setStatus(RentConst.Status.effective);
        user.setRegTime(new Date());
        dao.saveUser(user);
    }

    @Test
    public void testgetUserByPhoneAndPassword(){

        User user = dao.getUserByPhoneAndPassword("18224535932", "123456aa");

        System.out.println(user.getUsername());

    }

    @Test
    public void testfindAll(){

        List<User> all = dao.findAll();

        System.out.println(all.size());

    }

    @Test
    public void testupdate(){

        User user = dao.selectUser(4);
        user.setQq(97531372);
        int i = dao.updateUser(user);
        System.out.println(i);
    }


}