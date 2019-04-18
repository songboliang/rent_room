package com.rentroom.service.impl;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentroom.dao.ImageMapper;
import com.rentroom.dao.RoomMapper;
import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Image;
import com.rentroom.pojo.Room;
import com.rentroom.service.IRoomService;
import com.rentroom.utils.Bean.PageBean;
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
    public PageBean getRoomInfos(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode, pageSize);

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        Page<Room> page = roomMapper.getAllRoomInfos();

        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());
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


    @Override
    public PageBean findRoomInfosByPage(String addressName, double priceA, double priceB, int areaA, int areaB, String houseType, String sellType, int pageCode, int pageSize) {
/*        //先查询数据总量
        List<Room> rooms = roomMapper.selectRoomInfosByConditions(addressName, priceA, priceB, areaA, areaB, houseType, sellType);
        //计算总量
        int totalCount = rooms.size();
        //总页数
        int totalPage = (int) Math.ceil(totalCount/pageSize);

        int start = (pageCode-1)*pageSize;

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        List<Room> page = roomMapper.selectRoomInfosByConditionsAndPage(addressName, priceA, priceB, areaA, areaB, houseType, sellType ,start,pageSize);
        for (int i=0 ; i<page.size() ; i++) {
            List<Image> images = imageMapper.selectImageInfos(page.get(i).getRoomId());
            page.get(i).setImages(images);
        }*/

        //使用Mybatis分页插件
        PageHelper.startPage(pageCode, pageSize);

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        Page<Room> page = roomMapper.selectRoomInfosByConditionsAndPage1(addressName,priceA,priceB,areaA,areaB,houseType,sellType);

        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());
    }


    @Override
    public Room findRoomInfoByRoomname(String name) {
        return roomMapper.findRoomInfoByRoomname(name);
    }

    @Override
    public int updateRoomInfo(Room room) {
        return roomMapper.updateRoomInfo(room);
    }
}
