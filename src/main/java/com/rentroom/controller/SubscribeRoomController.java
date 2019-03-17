package com.rentroom.controller;



import com.rentroom.pojo.Room;
import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.pojo.User;
import com.rentroom.service.ISubscribeRoomService;
import com.rentroom.utils.RentConst;
import com.rentroom.utils.vo.SendCodeVO;
import net.sf.json.JSONObject;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/subscribeRoom")
public class SubscribeRoomController {
    private static Log log = LogFactory.getLog(SubscribeRoomController.class);


    @Autowired
    private ISubscribeRoomService subscribeRoomService;

    @RequestMapping("/subscribe.do")
    public ModelAndView subscribe(Model model,HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView=new ModelAndView(new MappingJackson2JsonView());

        Room roomInfo = (Room)request.getSession().getAttribute("roomInfo");
        User user= (User)request.getSession().getAttribute("userInfo");
        SubscribeRoom subscribeRoom1 = subscribeRoomService.findSubscribeRoom(user.getId(), roomInfo.getRoomId());
        SendCodeVO sendCodeVO = new SendCodeVO();
        if(subscribeRoom1!=null){
            subscribeRoomService.cancelSubscribeRoom(user.getId(),roomInfo.getRoomId());
            sendCodeVO.setMsg("已取消房源关注");
            sendCodeVO.setStatus(RentConst.Subscribe.failed);
        }else{
            SubscribeRoom subscribeRoom = new SubscribeRoom();
            subscribeRoom.setRoomId(roomInfo.getRoomId());
            subscribeRoom.setRoomName(roomInfo.getName());
            subscribeRoom.setPrice(roomInfo.getPrice());
            subscribeRoom.setLandlordPhone(roomInfo.getPhone());
            subscribeRoom.setUserId(user.getId());
            subscribeRoom.setUserName(user.getUsername());
            subscribeRoom.setUserPhone(user.getPhone());
            subscribeRoomService.insertSubscribeRoom(subscribeRoom);
            sendCodeVO.setStatus(RentConst.Subscribe.success);
            sendCodeVO.setMsg("房屋信息已被关注");
        }
        request.getSession().setAttribute("sendCodeVO",sendCodeVO);
        JSONObject jsonObject = JSONObject.fromObject(sendCodeVO);
        modelAndView.addObject(jsonObject);
        return modelAndView;
    }


    public void main(){

        SendCodeVO sendCodeVO = new SendCodeVO();
        sendCodeVO.setMsg("已取消房源关注");
        sendCodeVO.setStatus(RentConst.Subscribe.failed);
    }

    public void main1(){

        SendCodeVO sendCodeVO = new SendCodeVO();
        sendCodeVO.setMsg("已取消房源关注");
        sendCodeVO.setStatus(RentConst.Subscribe.failed);
    }

    public void main2(){

        SendCodeVO sendCodeVO = new SendCodeVO();
        sendCodeVO.setMsg("已取消房源关注");
        sendCodeVO.setStatus(RentConst.Subscribe.failed);
    }
}
