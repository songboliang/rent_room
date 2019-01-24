package com.rentroom.dao;

import com.rentroom.pojo.Room;
import com.rentroom.utils.RentConst;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class RoomMapperTest {

    @Autowired
    private RoomMapper roomMapper;

    @Test
    public void testInsertRoomInfo(){

        Room room =new Room();

        room.setName("1000-C");
        room.setAddressDesc("西湖区振华路242号239");
        room.setPrice(1200);
        room.setArea("24平方米");
        room.setPhone("18535919585");
        room.setStatus(RentConst.Room.renting);
        roomMapper.insertRoomInfo(room);

    }


}