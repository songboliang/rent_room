package com.rentroom.service.impl;


import com.rentroom.dao.RoomMapper;
import com.rentroom.pojo.Furniture;
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
        if(room!=null){
            //保存房源信息
            roomMapper.insertRoomInfo(room);
            //保存房源关联设施信息
            roomMapper.saveRoomOrFurnitre(room.getRoomId(),room.getFurnitureList());
        }
    }

    @Override
    public List<Room> getRoomInfos() {
        return roomMapper.getRoomInfos();
    }




    @Override
    public Room getRoomInfo(String roomId) {
        return roomMapper.getRoomInfo(roomId);
    }
}
