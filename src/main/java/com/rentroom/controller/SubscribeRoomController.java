package com.rentroom.controller;



import com.rentroom.pojo.Room;
import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.pojo.User;
import com.rentroom.service.ISubscribeRoomService;
import com.rentroom.utils.Bean.PageBean;
import com.rentroom.utils.RentConst;
import com.rentroom.utils.vo.SendCodeVO;
import net.sf.json.JSONObject;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

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
            subscribeRoom.setRoom(roomInfo);
            subscribeRoom.setUserId(user.getId());
            subscribeRoom.setUserName(user.getUsername());
            subscribeRoom.setUserPhone(user.getPhone());
            subscribeRoom.setCreateDate(new Date());
            subscribeRoom.setStatus(RentConst.SubscribeStatus.applying);
            subscribeRoomService.insertSubscribeRoom(subscribeRoom);
            sendCodeVO.setStatus(RentConst.Subscribe.success);
            sendCodeVO.setMsg("房屋信息已被关注");
        }
        request.getSession().setAttribute("sendCodeVO",sendCodeVO);
        JSONObject jsonObject = JSONObject.fromObject(sendCodeVO);
        modelAndView.addObject(jsonObject);
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/cancelSubscribe.do")
    public SendCodeVO main(HttpServletRequest request, HttpServletResponse response){
        User user= (User)request.getSession().getAttribute("userInfo");
        String roomId = request.getParameter("roomId");

        SubscribeRoom subscribeRoom1 = subscribeRoomService.findSubscribeRoom(user.getId(), roomId);
        SendCodeVO sendCodeVO = new SendCodeVO();
        if(subscribeRoom1!=null) {
            subscribeRoomService.cancelSubscribeRoom(user.getId(), roomId);
            sendCodeVO.setMsg("已取消房源关注");
            sendCodeVO.setStatus(RentConst.Subscribe.success);
        }else{
            sendCodeVO.setMsg("取消房源关注失败");
            sendCodeVO.setStatus(RentConst.Subscribe.failed);
        }
        return sendCodeVO;
    }


    @InitBinder
    protected  void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    @RequestMapping("/findapplylist.do")
    public String toaddhoust(Model model, HttpServletRequest request, HttpServletResponse response,
                             @RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                             @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize ) {

        PageBean page = subscribeRoomService.findAllApplying(pageCode, pageSize);

        request.getSession().setAttribute("page", page);
        model.addAttribute("mainPage", "applylist.jsp");
        return "admin/main1";
    }


}
