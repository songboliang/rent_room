package com.rentroom.controller;



import com.rentroom.pojo.Address;
import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import com.rentroom.service.IAddressService;
import com.rentroom.service.IFurnitureService;
import com.rentroom.service.IRoomService;
import com.rentroom.utils.RandUtil;
import net.sf.json.JSONArray;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

    @Autowired
    private IRoomService roomService;
    @Autowired
    private IFurnitureService furnitureService;
    @Autowired
    private IAddressService addressService;


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
    public void addhouse(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Room room = new Room();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String addressDesc = request.getParameter("addressDesc");
        String price = request.getParameter("price");
        String phone = request.getParameter("phone");
        String houseType = request.getParameter("houseType");
        String status = request.getParameter("status");
        String area = request.getParameter("area");
        String addID = request.getParameter("addID");
        String checkID = request.getParameter("checkID");
        String sellType = request.getParameter("sellType");
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
        Furniture furniture = new Furniture();
        for (String furnitureId : s) {
            furniture.setFurnitureId(Integer.valueOf(furnitureId));
            lists.add(furniture);
        }
        room.setFurnitureList(lists);
        room.setCreateDate(new Date());
        roomService.insertRoomInfo(room);
    }


    public void toUpLoadBacthHmImage(HttpServletRequest request, HttpServletResponse response, ModelMap model, String tid, @RequestParam("fileImg") MultipartFile[] multipartfiles) throws IOException, Exception {
        // 将request变成多部分request

        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;

        // 获取multiRequest中所有的文件名

        Iterator<String> iter = multiRequest.getFileNames();

        // 将图片名放到list集合里面，

        List<String> list = new ArrayList<String>();

        // 遍历所有文件名

        while (iter.hasNext()) {

            // 按文件名从multiRequest找到对应文件

            MultipartFile file= multiRequest.getFile(iter.next());

            // 实际的文件名

            String fileName= file.getOriginalFilename();

            //将实际的图片名放到集合中

            list.add(fileName);

            String uri = request.getSession().getServletContext().getRealPath("/") +"image/"+ fileName;

            File uploadSaveFile = new File(uri);

            judeDirExists(uploadSaveFile);

            // 将该文件存放至指定目录

            file.transferTo(uploadSaveFile);

        }

        System.out.println(list.toString());

        // 将list集合 转换成字符串并以，分割

        String pitruename = StringUtils.join(list, ',');

        System.out.println("图片名： "+pitruename);

    }



    //判断文件夹是否存在，不存在则创建

    public void judeDirExists(File file) {

        if (!file.exists()) {

            file.mkdirs();

        }

    }
}
