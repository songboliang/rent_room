package com.rentroom.dao;

import com.rentroom.pojo.SubscribeRoom;
import org.apache.ibatis.annotations.Param;

public interface SubscribeRoomMapper {

    void insertSubscribeRoom(SubscribeRoom subscribeRoom);

    SubscribeRoom findSubscribeRoom(@Param(value = "userId")long userId,@Param(value = "roomId") String roomId);

    void deleteSubcribeRoom(@Param(value = "userId")Long userId,@Param(value = "roomId") String roomId);

}
