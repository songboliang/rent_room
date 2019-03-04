package com.rentroom.dao;

import com.rentroom.pojo.Image;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ImageMapper {

    //批量插入图片信息
    void insertImageInfos(@Param(value = "images")List<Image> images,@Param(value = "roomId") String roomId);

    //插入图片信息
    void insertImageInfo(@Param(value = "image")Image image,@Param(value = "roomId")String roomId);

    //查询图片信息
    List<Image> selectImageInfos(String roomId);

    //删除图片信息
    void delectImageInfo(String imgId);

}
