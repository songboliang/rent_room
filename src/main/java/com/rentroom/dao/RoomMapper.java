package com.rentroom.dao;

import com.rentroom.pojo.Room;

import java.util.List;

/**
 * Author songboliang
 */
public interface RoomMapper {

    //添加信息
    void insertRoomInfo(Room room);

    //批量查询
    List<Room>  getRoomInfos();

}
