package com.rentroom.dao;

import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Author songboliang
 */
public interface RoomMapper {

    //添加信息
    void insertRoomInfo(Room room);

    //批量查询
    List<Room>  getRoomInfos();

    void saveRoomOrFurnitre(@Param(value = "roomId")String roomId,@Param(value = "furnitures") List<Furniture> furnitures);

    //通过Id查询房屋信息

    Room getRoomInfo(String roomId);

    /**
     * 通过售卖方式查询房屋信息
     * @param sellType
     * @return
     */
    List<Room> getRoomInfosBysellType(String sellType);


    void  deleteRoomInfo();

    List<Room> selectRoomInfosByConditions(@Param(value = "addressName")String addressName,@Param(value = "pricaA")double pricaA ,
                                           @Param(value = "priceB") double priceB , @Param(value = "areaA") int areaA ,@Param(value = "areaB") int  areaB,
                                           @Param(value = "houseType")String houseType);
}
