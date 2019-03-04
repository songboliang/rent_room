package com.rentroom.service.impl;

import com.rentroom.dao.ImageMapper;
import com.rentroom.pojo.Image;
import com.rentroom.service.IImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("imageService")
public class ImageServiceImpl implements IImageService {

    @Resource
    private ImageMapper imageMapper;

    @Override
    public void insertImageInfos(List<Image> images, String roomId) {
        imageMapper.insertImageInfos(images,roomId);
    }

    @Override
    public void insertImageInfo(Image image, String roomId) {
        imageMapper.insertImageInfo(image,roomId);
    }

    @Override
    public void delectImageInfo(String imgId) {
        imageMapper.delectImageInfo(imgId);
    }
}
