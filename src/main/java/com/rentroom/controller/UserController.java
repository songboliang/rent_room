package com.rentroom.controller;


import javax.servlet.http.HttpServletRequest;


import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rentroom.pojo.Room;
import com.rentroom.pojo.User;
import com.rentroom.service.IRoomService;
import com.rentroom.service.IUserService;
import com.rentroom.utils.GetSMS;
import com.rentroom.utils.RandUtil;
import com.rentroom.utils.RentConst;
import com.rentroom.utils.VerifyCode;
import com.rentroom.utils.vo.CanvasVO;
import com.rentroom.utils.vo.ResultVO;
import com.rentroom.utils.vo.ResultVOUtil;
import com.rentroom.utils.vo.SendCodeVO;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;

    @Autowired
    private IRoomService roomService;

    @RequestMapping("/showUser.do")
    public void selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        long userId = Long.parseLong(request.getParameter("id"));
        User user = this.userService.selectUser(userId);
        ObjectMapper mapper = new ObjectMapper();
        response.getWriter().write(mapper.writeValueAsString(user));
        response.getWriter().close();
    }

    @ResponseBody
    @RequestMapping("/imageVailCode.do")
    public ResultVO getCaptche(HttpServletRequest request, HttpServletResponse response)throws IOException{
        //创建对象
        VerifyCode vc = new VerifyCode();
        //获取图片对象
        BufferedImage bi = vc.getImage();
        //获得图片的文本内容
        String text = vc.getText();
        // 将系统生成的文本内容保存到session中
        request.getSession().setAttribute("text", text);

        String image=vc.output(bi);

        CanvasVO canvasVo=new CanvasVO();

        canvasVo.setImage(image);

        canvasVo.setRand(text);

        ModelAndView modelAndView=new ModelAndView(new MappingJackson2JsonView());
        response.setCharacterEncoding("utf-8");
        response.setContentType("image/jpeg");

//        modelAndView.addObject(JSON.toJSON());
        return  ResultVOUtil.success(canvasVo);

    }


    @ResponseBody
    @RequestMapping("/sendSMS.do")
    public ModelAndView getsendSMS(HttpServletRequest request, HttpServletResponse response)throws IOException{
        response.setCharacterEncoding("utf-8");

        String phone =request.getParameter("account");
        GetSMS.getmMssage(phone);
        //把短信验证码保存到session里边
        request.getSession().setAttribute("sendCode", GetSMS.randNum);

        ModelAndView modelAndView=new ModelAndView(new MappingJackson2JsonView());

        SendCodeVO sendCodeVO =new SendCodeVO();

        sendCodeVO.setMsg("发送信息成功");

        sendCodeVO.setStatus(RentConst.MsgStatus.success);

        modelAndView.addObject(JSON.toJSON(sendCodeVO));

        return modelAndView;
    }


    @ResponseBody
    @RequestMapping("/checkAccount.do")
    public ModelAndView vailPhone(HttpServletRequest request, HttpServletResponse response)throws IOException{

        String phone = request.getParameter("account");

        User user = userService.getUserByPhone(phone);

        SendCodeVO sendCodeVO =new SendCodeVO();

        if(user!=null){
            sendCodeVO.setStatus(RentConst.PhoneStatus.registered);

            sendCodeVO.setMsg("手机号已经被注册！");
        }else {
            sendCodeVO.setStatus(RentConst.PhoneStatus.unregistered);

            sendCodeVO.setMsg("手机号已经未注册！");
        }


        ModelAndView modelAndView=new ModelAndView(new MappingJackson2JsonView());

        JSONObject jsonObject = JSONObject.fromObject(sendCodeVO);

        modelAndView.addObject(jsonObject);
        return modelAndView;
    }


    @ResponseBody
    @RequestMapping("/vailSMSCode.do")
    public ModelAndView vailSMSCode(HttpServletRequest request, HttpServletResponse response)throws IOException{

        ModelAndView modelAndView=new ModelAndView(new MappingJackson2JsonView());

        String sendCode = (String) request.getSession().getAttribute("sendCode");

        String code=request.getParameter("code");

        SendCodeVO sendCodeVO =new SendCodeVO();

        if(sendCode==code){
            sendCodeVO.setStatus(RentConst.VaildCode.success);

            sendCodeVO.setMsg("验证码输入正确");
        }else {
            sendCodeVO.setStatus(RentConst.VaildCode.failed);

            sendCodeVO.setMsg("验证码输入错误");
        }
        JSONObject jsonObject = JSONObject.fromObject(sendCodeVO);

        modelAndView.addObject(jsonObject);

        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/register.do")
    public ResultVO register(HttpServletRequest request, HttpServletResponse response)throws IOException {

        String phone = request.getParameter("phone");

        String password = request.getParameter("password");

        String username = request.getParameter("username");

        User user =new User();
        user.setPhone(phone);
        user.setPassword(password);
        user.setUsername(username);
        user.setRole(RentConst.Role.root);
        user.setStatus(RentConst.Status.effective);
        user.setRegTime(new Date());

        userService.saveUser(user);

        return ResultVOUtil.success();
    }

    @ResponseBody
    @RequestMapping("/login.do")
    public SendCodeVO login(HttpServletRequest request, HttpServletResponse response){

        String phone = request.getParameter("account");
        String password = request.getParameter("password");

        User user = userService.getUserByPhoneAndPassword(phone,password);


        SendCodeVO sendCodeVO = new SendCodeVO();

        if(user == null){

            sendCodeVO.setStatus(RentConst.VaildCode.failed);

            sendCodeVO.setMsg("您的用户未注册，请先注册！");
        }else{
            //保存用户信息
            request.getSession().setAttribute("userInfo",user);

            sendCodeVO.setStatus(RentConst.VaildCode.success);

            sendCodeVO.setMsg("您的用户未注册，请先注册！");
        }

        return sendCodeVO;


    }


    /**
     *
     * 用户退出  清除session中用户信息
     * @param request
     * @param response
     */

    @ResponseBody
    @RequestMapping("/exit.do")
    public void exit(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=this.getSession(request);
        User user=(User)session.getAttribute("userInfo");
        if(user != null){
            session.removeAttribute("userInfo");
        }

    }


    //获取session
    private HttpSession getSession(HttpServletRequest request){
        return  request.getSession();
    }



    @RequestMapping("/toindex.do")
    public String toindex(Model model, HttpServletRequest request, HttpServletResponse response){
        //查询租房房源信息
        List<Room> roomInfos = roomService.getRoomInfosBysellType(RentConst.SellType.rent);
        request.getSession().setAttribute("roomInfos",roomInfos);
        //查询新房房源信息
        List<Room> bridalRoomInfos = roomService.getRoomInfosBysellType(RentConst.SellType.bridal_chamber);
        request.getSession().setAttribute("bridalRoomInfos",bridalRoomInfos);
        //查询二手房房源信息
        List<Room> secondHandRoomInfos = roomService.getRoomInfosBysellType(RentConst.SellType.second_hand_house);
        request.getSession().setAttribute("secondHandRoomInfos",secondHandRoomInfos);
        return "client/index";
    }

}