package com.rentroom.utils;

public class RentConst {

    /**
     *
     * 用户角色常量定义
     */

    public interface Role{

        String root="1";

        String member="2";

    }

    /**
     * 用户状态
     */

    public interface Status{

        int effective = 1;          //有效

        int invalid = 2;            //失效

    }

    /**
     * 短信状态
     */


    public interface MsgStatus{

        int success = 0;        //短信发送成功


        int failed = 1;         //短信发送失败

    }


    /**
     * 手机号状态
     */

    public interface PhoneStatus{

        int registered = 0;        //手机号已被注册


        int unregistered = 1;         //手机号未注册

    }

    /**
     * 验证码验证
     */

    public interface VaildCode{

        int success = 0;    //验证成功

        int failed = 1;     //验证失败

    }

    public interface Room{

        String rented = "已经出租";

        String renting = "未出租";

    }

    public interface SellType{

        String rent="租房";

        String bridal_chamber= "新房";

        String second_hand_house = "二手房";

    }

    public interface HouseType{

        String one_hall = "一室一厅";

        String two_hall="两室一厅";

        String three_hall="三室一厅";

        String one_hall_one_toliet="一室一厅一卫";

    }

}
