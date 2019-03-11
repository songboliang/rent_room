package com.rentroom.service;

import com.rentroom.utils.Bean.PageBean;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class IRoomServiceTest {

    @Autowired
    private IRoomService roomService;

    @Test
    public void testpageHelper(){

        PageBean roomInfosByPage = roomService.findRoomInfosByPage(null, 0, 0, 0, 0,
                null, "租房", 1, 2);

        System.out.println(roomInfosByPage);

    }

}