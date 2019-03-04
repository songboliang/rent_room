package com.rentroom.service.impl;


import com.rentroom.dao.ImageMapper;
import com.rentroom.dao.RoomMapper;
import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Image;
import com.rentroom.pojo.Room;
import com.rentroom.service.IRoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roomService")
public class RoomServiceImpl implements IRoomService {

    @Resource
    private RoomMapper roomMapper;
    @Resource
    private ImageMapper imageMapper;

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
        List<Room> roomInfos = roomMapper.getRoomInfos();

        //查询所有房屋的图片信息
        for (int i=0 ; i<roomInfos.size() ; i++) {
            List<Image> images = imageMapper.selectImageInfos(roomInfos.get(i).getRoomId());
            roomInfos.get(i).setImages(images);
        }
        return roomInfos;
    }




    @Override
    public Room getRoomInfo(String roomId) {
        Room roomInfo = roomMapper.getRoomInfo(roomId);
        if(roomInfo!=null){
            List<Image> images = imageMapper.selectImageInfos(roomId);
            roomInfo.setImages(images);
        }
        return roomInfo;
    }

    @Override
    public List<Room> getRoomInfosBysellType(String sellType) {
        List<Room> roomInfos = roomMapper.getRoomInfosBysellType(sellType);
        //查询所有房屋的图片信息
        for (int i=0 ; i<roomInfos.size() ; i++) {
            List<Image> images = imageMapper.selectImageInfos(roomInfos.get(i).getRoomId());
            roomInfos.get(i).setImages(images);
        }
        return roomInfos;
    }
}
