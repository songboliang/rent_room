package com.rentroom.service;

import com.rentroom.pojo.Furniture;

import java.util.List;

public interface IFurnitureService {

    //添加信息
    void insertFurnitureInfo(Furniture furniture);

    //批量查询
    List<Furniture> getFurnitureInfos();

}
