package com.rentroom.dao;

import com.github.pagehelper.Page;
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

    Page  getAllRoomInfos();

    void saveRoomOrFurnitre(@Param(value = "roomId")String roomId,@Param(value = "furnitures") List<Furniture> furnitures);

    //通过Id查询房屋信息

    Room getRoomInfo(String roomId);

    /**
     * 通过售卖方式查询房屋信息
     * @param sellType
     * @return
     */
    List<Room> getRoomInfosBysellType(String sellType);


    void  deleteRoomInfo(String roomId);

    List<Room> selectRoomInfosByConditions(@Param(value = "addressName")String addressName,@Param(value = "priceA")double priceA ,
                                           @Param(value = "priceB") double priceB , @Param(value = "areaA") int areaA ,@Param(value = "areaB") int  areaB,
                                           @Param(value = "houseType")String houseType , @Param(value = "sellType") String sellType);


    List<Room> selectRoomInfosByConditionsAndPage(@Param(value = "addressName")String addressName,@Param(value = "priceA")double priceA ,
                                           @Param(value = "priceB") double priceB , @Param(value = "areaA") int areaA ,@Param(value = "areaB") int  areaB,
                                           @Param(value = "houseType")String houseType , @Param(value = "sellType") String sellType,
                                           @Param(value = "start") int start ,@Param(value = "size") int size  );

    Page<Room> selectRoomInfosByConditionsAndPage1(@Param(value = "addressName")String addressName,@Param(value = "priceA")double priceA ,
                                                  @Param(value = "priceB") double priceB , @Param(value = "areaA") int areaA ,@Param(value = "areaB") int  areaB,
                                                  @Param(value = "houseType")String houseType , @Param(value = "sellType") String sellType);

    /**
     * 通过门牌号查找房屋信息
     * @param name
     * @return
     */
    Room findRoomInfoByRoomname(String name);

    int updateRoomInfo(Room room);
}
