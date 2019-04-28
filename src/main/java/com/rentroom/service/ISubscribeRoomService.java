package com.rentroom.service;

import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.utils.Bean.PageBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface ISubscribeRoomService {

    /**
     * 关注房屋信息
     * @param subscribeRoom
     */
    void insertSubscribeRoom(SubscribeRoom subscribeRoom);

    /**
     * 通过用户和房屋编号查询关注信息
     * @param userId
     * @param roomId
     * @return
     */
    SubscribeRoom findSubscribeRoom(long userId, String roomId);

    /**
     * 取消关注房屋信息
     * @param userId
     * @param roomId
     */
    void cancelSubscribeRoom(Long userId, String roomId);

    List<SubscribeRoom> findSubscribeRoomList(@Param(value = "userId")long userId);

    //批量查询
    PageBean findAllApplying(int pageCode, int pageSize);
}
