package com.rentroom.controller;


import com.rentroom.pojo.Address;
import com.rentroom.pojo.Furniture;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/rentroom")
public class RentRoomController {

    @RequestMapping("/about.do")
    public String toabout(){

        return "client/about";
    }

    @RequestMapping("/user.do")
    public String touser(){

        return "client/user";
    }

    @RequestMapping("/changePassword.do")
    public String changePassword(){

        return "client/user_pwd";
    }

    @RequestMapping("/toaddhetong.do")
    public String toaddhoust(Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("mainPage", "addhetong.jsp");
        return "admin/main1";
    }



}
