package com.rentroom.controller;


import com.rentroom.pojo.Room;
import com.rentroom.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/room")
public class RoomController {

    @Autowired
    private IRoomService roomService;


    @RequestMapping("/roomInfo.do")
    public String  getRoomInfos(HttpServletRequest request, HttpServletResponse response){

        List<Room> roomInfos = roomService.getRoomInfos();

        request.getSession().setAttribute("roomInfos",roomInfos);

        return null;

    }

}
