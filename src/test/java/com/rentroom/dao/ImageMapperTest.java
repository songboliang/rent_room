package com.rentroom.dao;

import com.rentroom.pojo.Image;
import com.rentroom.utils.RandUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class ImageMapperTest {

    @Autowired
    private ImageMapper imageMapper;

    @Test
    public void testInsertImageInfos(){

        List<Image> images= new ArrayList<>();
        Image image=new Image();
        image.setImgId(RandUtil.getUUID());
        image.setImgName("aaa");
        Image image1=new Image();
        image1.setImgId(RandUtil.getUUID());
        image1.setImgName("bbb");
        images.add(image);
        images.add(image1);
        imageMapper.insertImageInfos(images,"f59ab2d9c71b4156a1dd174b14875a94");

    }

}