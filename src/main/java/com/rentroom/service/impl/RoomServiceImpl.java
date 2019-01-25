package com.rentroom.service.impl;


import com.rentroom.dao.RoomMapper;
import com.rentroom.pojo.Room;
import com.rentroom.service.IRoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roomService")
public class RoomServiceImpl implements IRoomService {

    @Resource
    private RoomMapper roomMapper;

    @Override
    public void insertRoomInfo(Room room) {

    }

    @Override
    public List<Room> getRoomInfos() {
        return roomMapper.getRoomInfos();
    }
}
