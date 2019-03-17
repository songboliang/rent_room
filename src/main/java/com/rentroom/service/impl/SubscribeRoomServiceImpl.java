package com.rentroom.service.impl;

import com.rentroom.dao.SubscribeRoomMapper;
import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.service.ISubscribeRoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("subscribeRoomService")
public class SubscribeRoomServiceImpl implements ISubscribeRoomService {

    @Resource
    private SubscribeRoomMapper subscribeRoomMapper;

    @Override
    public void insertSubscribeRoom(SubscribeRoom subscribeRoom) {
        subscribeRoomMapper.insertSubscribeRoom(subscribeRoom);
    }

    @Override
    public SubscribeRoom findSubscribeRoom(long userId, String roomId) {
        return subscribeRoomMapper.findSubscribeRoom(userId,roomId);
    }

    @Override
    public void cancelSubscribeRoom(Long userId, String roomId) {
        subscribeRoomMapper.deleteSubcribeRoom(userId,roomId);
    }
}
