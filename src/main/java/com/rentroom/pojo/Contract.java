package com.rentroom.pojo;




import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Contract {

    private String contractId;

    private String roomname;

    private String address;

    private String lessor;  //出租方

    private String lessee;  //承租方

    private String lessorCard;

    private String lesseeCard;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startDate;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endDate;

    private double price;

    private int payRent;    //交租日期

    private double deposit; //押金

    public String getContractId() {
        return contractId;
    }

    public void setContractId(String contractId) {
        this.contractId = contractId;
    }

    public String getRoomname() {
        return roomname;
    }

    public void setRoomname(String roomname) {
        this.roomname = roomname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLessor() {
        return lessor;
    }

    public void setLessor(String lessor) {
        this.lessor = lessor;
    }

    public String getLessee() {
        return lessee;
    }

    public void setLessee(String lessee) {
        this.lessee = lessee;
    }

    public String getLessorCard() {
        return lessorCard;
    }

    public void setLessorCard(String lessorCard) {
        this.lessorCard = lessorCard;
    }

    public String getLesseeCard() {
        return lesseeCard;
    }

    public void setLesseeCard(String lesseeCard) {
        this.lesseeCard = lesseeCard;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getPayRent() {
        return payRent;
    }

    public void setPayRent(int payRent) {
        this.payRent = payRent;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }
}
