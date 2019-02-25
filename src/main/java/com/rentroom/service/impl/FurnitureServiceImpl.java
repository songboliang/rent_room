package com.rentroom.service.impl;

import com.rentroom.dao.FurnitureMapper;
import com.rentroom.pojo.Furniture;
import com.rentroom.service.IFurnitureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("furnitureService")
public class FurnitureServiceImpl implements IFurnitureService {

    @Resource
    private FurnitureMapper furnitureMapper;

    @Override
    public void insertFurnitureInfo(Furniture furniture) {
        furnitureMapper.insertFurnitureInfo(furniture);
    }

    @Override
    public List<Furniture> getFurnitureInfos() {
        return furnitureMapper.getFurnitureInfos();
    }
}
