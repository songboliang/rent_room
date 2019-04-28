package com.rentroom.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentroom.dao.SubscribeRoomMapper;
import com.rentroom.pojo.Room;
import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.service.ISubscribeRoomService;
import com.rentroom.utils.Bean.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<SubscribeRoom> findSubscribeRoomList(long userId) {
        return subscribeRoomMapper.findSubscribeRoomList(userId);
    }

    @Override
    public PageBean findAllApplying(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode, pageSize);

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        Page<SubscribeRoom> page = subscribeRoomMapper.findAllApplying();

        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());

    }
}
