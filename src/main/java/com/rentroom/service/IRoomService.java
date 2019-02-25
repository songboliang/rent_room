package com.rentroom.service;

import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IRoomService {


    //添加信息
    void insertRoomInfo(Room room);

    //批量查询
    List<Room> getRoomInfos();

    //通过Id查询房屋信息
    Room getRoomInfo(String roomId);
}
