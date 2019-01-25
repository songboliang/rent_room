package com.rentroom.service;

import com.rentroom.pojo.Room;

import java.util.List;

public interface IRoomService {


    //添加信息
    void insertRoomInfo(Room room);

    //批量查询
    List<Room> getRoomInfos();

}
