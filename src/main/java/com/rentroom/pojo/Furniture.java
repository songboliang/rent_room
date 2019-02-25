package com.rentroom.pojo;

import java.util.List;

public class Furniture {

    private int furnitureId;

    private String furniturename;

    private List<Room> rooms;

    public int getFurnitureId() {
        return furnitureId;
    }

    public void setFurnitureId(int furnitureId) {
        this.furnitureId = furnitureId;
    }

    public String getFurniturename() {
        return furniturename;
    }

    public void setFurniturename(String furniturename) {
        this.furniturename = furniturename;
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
    }
}
