package com.rentroom.controller;

import com.rentroom.service.IApplyOutService;
import com.rentroom.service.impl.ApplyOutServiceImpl;
import com.rentroom.utils.Bean.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/applyout")
public class ApplyOutController {

    @Autowired
    private IApplyOutService applyOutService;

    @RequestMapping("/toapplyout.do")
    public String toApplyOut(Model model, HttpServletRequest request, HttpServletResponse response,
                             @RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                             @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize ) {

        PageBean page = applyOutService.findAllApplying(pageCode, pageSize);

        request.getSession().setAttribute("page", page);
        model.addAttribute("mainPage", "applyout.jsp");
        return "admin/main1";
    }

}
