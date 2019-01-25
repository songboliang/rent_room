package com.rentroom.dao;

import com.rentroom.pojo.Room;
import com.rentroom.utils.RentConst;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class RoomMapperTest {

    @Autowired
    private RoomMapper roomMapper;

    @Test
    public void testInsertRoomInfo(){

        Room room =new Room();

        room.setName("306号");
        room.setAddressDesc("华安小区B幢306");
        room.setPrice(1200);
        room.setArea("24平方米");
        room.setPhone("18535919585");
        room.setStatus(RentConst.Room.renting);
        room.setCreateDate(new Date());
        roomMapper.insertRoomInfo(room);

    }

    @Test
    public void testGetRoomInfo(){
        List<Room> roomInfos = roomMapper.getRoomInfos();
        System.out.println(roomInfos.size());
    }


}