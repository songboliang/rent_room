package com.rentroom.dao;

import com.rentroom.pojo.Furniture;

import java.util.List;

public interface FurnitureMapper {

    //添加信息
    void insertFurnitureInfo(Furniture furniture);

    //批量查询
    List<Furniture> getFurnitureInfos();

}
