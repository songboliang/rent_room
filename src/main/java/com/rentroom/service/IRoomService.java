package com.rentroom.service;

import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import com.rentroom.utils.Bean.PageBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IRoomService {


    //添加信息
    void insertRoomInfo(Room room);

    //批量查询
    PageBean getRoomInfos(int pageCode, int pageSize);

    //通过Id查询房屋信息
    Room getRoomInfo(String roomId);

    /**
     * 通过售卖方式查询房屋信息
     * @param sellType
     * @return
     */
    List<Room> getRoomInfosBysellType(String sellType);

    /**
     * 分页查询
     * @param
     * @param pageCode 当前页
     * @param pageSize 每页的记录数
     * @return
     */
    PageBean findRoomInfosByPage(String addressName,double priceA ,
                                 double priceB ,int areaA , int  areaB,
                                 String houseType ,  String sellType ,int pageCode, int pageSize);


    Room findRoomInfoByRoomname(String name);

    int updateRoomInfo(Room room);

    void  deleteRoomInfo(String roomId);

}
