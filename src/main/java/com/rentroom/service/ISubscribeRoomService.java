package com.rentroom.service;

import com.rentroom.pojo.SubscribeRoom;


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

}
