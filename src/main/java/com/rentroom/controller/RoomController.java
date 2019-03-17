package com.rentroom.controller;



import com.rentroom.pojo.*;
import com.rentroom.service.*;
import com.rentroom.utils.Bean.PageBean;
import com.rentroom.utils.RandUtil;
import com.rentroom.utils.RentConst;
import com.rentroom.utils.vo.SendCodeVO;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/room")
public class RoomController {
    private static Log log = LogFactory.getLog(RoomController.class);

    @Autowired
    private IRoomService roomService;
    @Autowired
    private IFurnitureService furnitureService;
    @Autowired
    private IAddressService addressService;
    @Autowired
    private IImageService imageService;
    @Autowired
    private ISubscribeRoomService subscribeRoomService;

    @RequestMapping("/roomInfo.do")
    public String getRoomInfos(HttpServletRequest request, HttpServletResponse response) {

        List<Room> roomInfos = roomService.getRoomInfos();

        request.getSession().setAttribute("roomInfos", roomInfos);

        System.out.println("进入方法");
        return null;

    }

    @RequestMapping("/toaddhouse.do")
    public String toaddhoust(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<Furniture> furnitureInfos = furnitureService.getFurnitureInfos();
        request.getSession().setAttribute("furnitureInfos", furnitureInfos);
        List<Address> addressInfos = addressService.getAddressInfos();
        request.getSession().setAttribute("addressInfos", addressInfos);
        model.addAttribute("mainPage", "addhouse.jsp");
        return "admin/main1";
    }

    @ResponseBody
    @RequestMapping("/addhouse.do")
    public SendCodeVO addhouse(Model model,@RequestParam(value = "fileList[]") MultipartFile[] fileList, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Room room = new Room();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<Image> images = toUpLoadBacthHmImage(request, response, fileList);
        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
        String name = multiRequest.getParameter("name");
        String addressDesc = multiRequest.getParameter("addressDesc");
        String price = multiRequest.getParameter("price");
        String phone = multiRequest.getParameter("phone");
        String houseType = multiRequest.getParameter("houseType");
        String status = multiRequest.getParameter("status");
        String area = multiRequest.getParameter("area");
        String addID = multiRequest.getParameter("addID");
        String checkID = multiRequest.getParameter("checkID");
        String sellType = multiRequest.getParameter("sellType");
        Address address = new Address();
        address.setAddId(addID);
        room.setAddress(address);
        room.setRoomId(RandUtil.getUUID());
        room.setName(name);
        room.setAddressDesc(addressDesc);
        if (area != null & area != "") {
            room.setArea(Integer.valueOf(area));
        }
        room.setHouseType(houseType);
        room.setSellType(sellType);
        room.setStatus(status);
        if (price != null & price != "") {
            room.setPrice(Double.valueOf(price));
        }
        room.setPhone(phone);
        checkID = checkID.substring(2, checkID.length() - 2);
        System.out.println(checkID);
        String[] s = checkID.split("\",\"");
        List<Furniture> lists = new ArrayList<>();
        for (String furnitureId : s) {
            Furniture furniture = new Furniture();
            furniture.setFurnitureId(Integer.valueOf(furnitureId));
            lists.add(furniture);
        }
        room.setFurnitureList(lists);
        room.setCreateDate(new Date());
        roomService.insertRoomInfo(room);
        imageService.insertImageInfos(images,room.getRoomId());

        SendCodeVO sendCodeVO = new SendCodeVO();

        sendCodeVO.setStatus(RentConst.MsgStatus.success);
        sendCodeVO.setMsg("添加成功");
        return sendCodeVO;
    }


    public List<Image> toUpLoadBacthHmImage(HttpServletRequest request, HttpServletResponse response,MultipartFile[] multipartfiles) throws IOException, Exception {

        List<Image> images=new ArrayList<>();

        // 遍历所有文件名
        for (MultipartFile file:multipartfiles) {
            Image image = new Image();
            // 实际的文件名

            String fileName= file.getOriginalFilename();

            log.info("原图片名： "+fileName);

            //文件的实际名字
            String trueFileName = String.valueOf(System.currentTimeMillis())+fileName;

            log.info("实际图片名： "+trueFileName);


            String uri = request.getSession().getServletContext().getRealPath("/") +"image/"+ trueFileName;

            File uploadSaveFile = new File(uri);

            judeDirExists(uploadSaveFile);

            // 将该文件存放至指定目录

            file.transferTo(uploadSaveFile);

            image.setImgId(RandUtil.getUUID());

            image.setImgName(trueFileName);

            images.add(image);
        }
        return images;

    }


    //判断文件夹是否存在，不存在则创建

    public void judeDirExists(File file) {

        if (!file.exists()) {

            file.mkdirs();

        }

    }


    @RequestMapping("/toahouselist.do")
    public String toahouselist(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<Room> roomInfos = roomService.getRoomInfos();
        request.getSession().setAttribute("houselist", roomInfos);
        model.addAttribute("mainPage", "ahouselist.jsp");
        return "admin/main1";
    }

    //修改房屋信息
    @RequestMapping("/findid.do")
    public String findid(Model model, String id ,HttpServletRequest request, HttpServletResponse response) {
        //查询房屋信息
        Room roomInfo = roomService.getRoomInfo(id);

        request.getSession().setAttribute("room", roomInfo);
        model.addAttribute("mainPage", "addhouse.jsp");
        return "admin/main1";
    }

    //修改房屋信息
    @RequestMapping("/deletehouse.do")
    public String deletehouse(Model model,String id , HttpServletRequest request, HttpServletResponse response) {

        List<Room> roomInfos = roomService.getRoomInfos();
        request.getSession().setAttribute("houselist", roomInfos);
        model.addAttribute("mainPage", "ahouselist.jsp");
        return "admin/main1";
    }


    @RequestMapping("/toprozu.do")
    public String toprozu(Model model,@RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                          @RequestParam(value = "pageSize", required = false, defaultValue = "2") int pageSize ,
                           HttpServletRequest request, HttpServletResponse response) {
        PageBean<Room> roomInfos = this.findRoomInfo(request, response, pageCode, pageSize);
        request.getSession().setAttribute("page", roomInfos);
        return "client/pro_zu";
    }

    @RequestMapping("/toproxin.do")
    public String toproxin(Model model,@RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                          @RequestParam(value = "pageSize", required = false, defaultValue = "2") int pageSize ,
                          HttpServletRequest request, HttpServletResponse response) {
        PageBean<Room> roomInfos = this.findRoomInfo(request, response, pageCode, pageSize);
        request.getSession().setAttribute("page", roomInfos);

        return "client/pro_xin";
    }

    @RequestMapping("/toproer.do")
    public String toproer(Model model,@RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                          @RequestParam(value = "pageSize", required = false, defaultValue = "2") int pageSize ,
                          HttpServletRequest request, HttpServletResponse response) {
        PageBean<Room> roomInfos = this.findRoomInfo(request, response, pageCode, pageSize);
        request.getSession().setAttribute("page", roomInfos);

        return "client/pro_er";
    }

    private PageBean<Room> findRoomInfo(HttpServletRequest request, HttpServletResponse response,int pageCode,int pageSize){
        String addressName = request.getParameter("addressName");
        String price = request.getParameter("price");
        String area = request.getParameter("area");
        String houseType = request.getParameter("houseType");
        String sellType = request.getParameter("sellType");
        double priceA = 0;
        double priceB = 0;
        int areaA = 0;
        int areaB = 0;
        if(price != null ){
            String[] split = price.split("-");
            priceA = Double.valueOf(split[0]);
            priceB = Double.valueOf(split[1]);
        }
        if(area != null ){
            String[] split = area.split("-");
            areaA = Integer.valueOf(split[0]);
            areaB = Integer.valueOf(split[1]);
        }
        PageBean<Room> roomInfos = roomService.findRoomInfosByPage(addressName, priceA, priceB, areaA, areaB, houseType, sellType, pageCode, pageSize);

        return  roomInfos;
    }

    @RequestMapping("/toproinfo.do")
    public String toproinfo(Model model,@RequestParam(value = "roomId")String roomId, HttpServletRequest request, HttpServletResponse response) {

        //通过房屋Id查询房屋信息
        User user =(User)request.getSession().getAttribute("userInfo");
        Room roomInfo = roomService.getRoomInfo(roomId);
        SubscribeRoom subscribeRoom = subscribeRoomService.findSubscribeRoom(user.getId(), roomId);

        SendCodeVO sendCodeVO=new SendCodeVO();
        if(subscribeRoom!=null){
            sendCodeVO.setStatus(RentConst.Subscribe.success);
            sendCodeVO.setMsg("已关注该房屋");
        }else{
            sendCodeVO.setStatus(RentConst.Subscribe.failed);
            sendCodeVO.setMsg("未关注该房屋");
        }
        request.getSession().setAttribute("sendCodeVO", sendCodeVO);

        request.getSession().setAttribute("roomInfo", roomInfo);

        return "client/proinfo";
    }

    @RequestMapping("/toproinfosell.do")
    public String toproInfoSell(Model model,@RequestParam(value = "roomId")String roomId, HttpServletRequest request, HttpServletResponse response) {

        //通过房屋Id查询房屋信息
        User user =(User)request.getSession().getAttribute("userInfo");
        Room roomInfo = roomService.getRoomInfo(roomId);
        SubscribeRoom subscribeRoom = subscribeRoomService.findSubscribeRoom(user.getId(), roomId);

        SendCodeVO sendCodeVO=new SendCodeVO();
        if(subscribeRoom!=null){
            sendCodeVO.setStatus(RentConst.Subscribe.success);
            sendCodeVO.setMsg("已关注该房屋");
        }else{
            sendCodeVO.setStatus(RentConst.Subscribe.failed);
            sendCodeVO.setMsg("未关注该房屋");
        }
        request.getSession().setAttribute("sendCodeVO", sendCodeVO);

        request.getSession().setAttribute("roomInfo", roomInfo);

        return "client/proinfosell";
    }
}
