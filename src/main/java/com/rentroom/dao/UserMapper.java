package com.rentroom.dao;


import com.github.pagehelper.Page;
import com.rentroom.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    User selectUser(long id);

    //保存用户

    void saveUser(User user);

    //通过手机号Phone查找用户
    User getUserByPhone(String phone);

    //通过手机号和密码查询
    User getUserByPhoneAndPassword(@Param(value = "phone") String phone,@Param(value = "password") String password);

    //修改用户密码
    void updateUserPwd(User user);

    Page<User> findAll();

    /**
     * 补充用户信息
     * @param user
     */
    int updateUser(User user);

}
