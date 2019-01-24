package com.rentroom.pojo;

public class Region {

    private long id;

    private long parentsid;

    private String name;

    private String status;

    private int isparents;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getParentsid() {
        return parentsid;
    }

    public void setParentsid(long parentsid) {
        this.parentsid = parentsid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getIsparents() {
        return isparents;
    }

    public void setIsparents(int isparents) {
        this.isparents = isparents;
    }
}
