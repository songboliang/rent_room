package com.rentroom.utils;

import java.util.Random;

public class RandUtil {

    public static String getRandomNum() {
        Random random = new Random();
        String randomNum = random.nextInt(1000000) + "";
        if (randomNum.length() != 6) {
            System.out.println("6位伪随机数：" + randomNum);
            return getRandomNum();
        }
        System.out.println("6位随机数：" + randomNum);
        return randomNum;
    }


}
