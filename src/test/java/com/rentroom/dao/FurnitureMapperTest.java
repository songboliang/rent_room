package com.rentroom.dao;

import com.rentroom.pojo.Furniture;
import com.rentroom.pojo.Room;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class FurnitureMapperTest {

    @Autowired
    private FurnitureMapper furnitureMapper;

    @Test
    public void saveFurnitureInfo(){

        Furniture furniture = new Furniture();

        furniture.setFurniturename("卫生间");

        furnitureMapper.insertFurnitureInfo(furniture);

    }

    @Test
    public void testGetFurnitureInfos(){
        List<Furniture> furnitureInfos = furnitureMapper.getFurnitureInfos();
        System.out.println(furnitureInfos.size());
        for (Furniture furniture :furnitureInfos){
            System.out.println(furniture.getFurniturename());
        }
    }

}