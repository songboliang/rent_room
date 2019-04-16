package com.rentroom.service;


import com.rentroom.pojo.User;
import com.rentroom.utils.Bean.PageBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserService {

    public User selectUser(long userId);


    void saveUser(User user);

    //通过手机号Phone查找用户

    User getUserByPhone(String phone);

    //通过手机号和密码查询
    User getUserByPhoneAndPassword(@Param(value = "phone") String phone, @Param(value = "password") String password);

    /**
     * 修改密码
     * @param user
     */
    void updateUserPwd(User user);


    PageBean findAll(int pageCode, int pageSize);



    /**
     * 补充用户信息
     * @param user
     */
    int updateUser(User user);
}