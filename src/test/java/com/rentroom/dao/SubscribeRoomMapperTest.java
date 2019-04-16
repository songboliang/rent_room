package com.rentroom.dao;

import com.rentroom.pojo.Room;
import com.rentroom.pojo.SubscribeRoom;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class SubscribeRoomMapperTest {

    @Autowired
    private SubscribeRoomMapper subscribeRoomMapper;

    @Test
    public void test1(){
        SubscribeRoom subscribeRoom = new SubscribeRoom();
        subscribeRoom.setUserId(2);
        subscribeRoom.setUserPhone("18224535932");
        subscribeRoom.setUserName("宋博良");
        Room room = new Room();
        room.setRoomId("378ffb93261647b5a77c1d8cd795adf5");
        subscribeRoom.setRoom(room);
        subscribeRoomMapper.insertSubscribeRoom(subscribeRoom);
     }
    @Test
    public void test2(){
        List<SubscribeRoom> subscribeRoomList = subscribeRoomMapper.findSubscribeRoomList(2);
        System.out.println(subscribeRoomList.size());
    }

}