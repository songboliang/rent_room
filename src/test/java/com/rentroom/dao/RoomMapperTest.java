package com.rentroom.dao;

import com.rentroom.pojo.Address;
import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import com.rentroom.utils.RandUtil;
import com.rentroom.utils.RentConst;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class RoomMapperTest {

    @Autowired
    private RoomMapper roomMapper;

    @Test
    public void testInsertRoomInfo(){

        Room room =new Room();
        String roomId= RandUtil.getUUID();
        room.setRoomId(roomId);
        room.setName("307-A号");
        room.setAddressDesc("华安小区B幢307号A房");
        room.setSellType(RentConst.SellType.rent);
        room.setHouseType(RentConst.HouseType.one_hall);
        room.setPrice(1500);
        room.setArea(14);
        room.setPhone("18535919585");
        room.setStatus(RentConst.Room.renting);
        room.setCreateDate(new Date());
        Furniture furniture1=new Furniture();
        Furniture furniture2=new Furniture();
        furniture1.setFurnitureId(15);
        furniture2.setFurnitureId(18);
        Furniture furniture3=new Furniture();
        furniture3.setFurnitureId(19);
        List<Furniture> furnitures=new ArrayList<>();
        furnitures.add(furniture1);
        furnitures.add(furniture2);
        furnitures.add(furniture3);
        room.setFurnitureList(furnitures);
        Address address=new Address();
        address.setAddId("32a0c2ca561c4a7ca098a40fe9001cd9");
        roomMapper.insertRoomInfo(room);
        roomMapper.saveRoomOrFurnitre(roomId,room.getFurnitureList());
    }

    @Test
    public void testGetRoomInfos(){
        List<Room> roomInfos = roomMapper.getRoomInfos();
        System.out.println(roomInfos.size());
    }

    @Test
    public void testGetRoomInfo(){
        Room roomInfo = roomMapper.getRoomInfo("73b3b5425b464c4ebcb85e9201008265");
        System.out.println(roomInfo.getFurnitureList().size());
        System.out.println(roomInfo.getAddress().getAddId());
        System.out.println(roomInfo.getAddress().getAddressName());
    }

    @Test
    public void findroom(){

        Room room = roomMapper.findRoomInfoByRoomname("301-A");

        System.out.println(room);

    }

}