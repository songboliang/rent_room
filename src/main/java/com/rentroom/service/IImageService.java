package com.rentroom.service;

import com.rentroom.pojo.Image;

import java.util.List;

public interface IImageService {

    //批量插入图片信息
    void insertImageInfos(List<Image> images, String roomId);

    //插入图片信息
    void insertImageInfo(Image image,String roomId);

    //查询图片信息


    //删除图片信息
    void delectImageInfo(String imgId);

}
