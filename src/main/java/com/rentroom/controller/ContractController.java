package com.rentroom.controller;


import com.rentroom.pojo.Contract;
import com.rentroom.pojo.Room;
import com.rentroom.service.IContractService;
import com.rentroom.service.IRoomService;
import com.rentroom.utils.Bean.PageBean;
import com.rentroom.utils.RandUtil;
import com.rentroom.utils.RentConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/contract")
public class ContractController {

    @Autowired
    private IContractService contractService;

    @Autowired
    private IRoomService roomService;

    @InitBinder
    protected  void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping("/addcontract.do")
    public String createContract(Model model, HttpServletRequest request, HttpServletResponse response, Contract contract){

        contract.setContractId(RandUtil.getUUID());
        Room room = roomService.findRoomInfoByRoomname(contract.getRoomname());
        if(room!=null){
            contractService.insertContractInfo(contract);
            room.setStatus(RentConst.Room.rented);
            int i = roomService.updateRoomInfo(room);
        }

        return "redirect:/contract/findRentlist.do";

    }

    @RequestMapping("/findRentlist.do")
    public String findRentlist(Model model, HttpServletRequest request, HttpServletResponse response,
                               @RequestParam(value = "pageSize", required = false, defaultValue = "1") int pageCode,
                               @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize) {
        PageBean page = contractService.findAllContract(pageCode, pageSize);
        request.getSession().setAttribute("page",page);
        model.addAttribute("mainPage", "zulist.jsp");
        return "admin/main1";
    }

    @RequestMapping("/seehetong.do")
    public String seehetong(Model model,String contractId, HttpServletRequest request, HttpServletResponse response){
        Contract contract = contractService.findContractById(contractId);
        request.getSession().setAttribute("contract",contract);
        model.addAttribute("mainPage", "hetong.jsp");
        return "admin/main1";
    }




}
