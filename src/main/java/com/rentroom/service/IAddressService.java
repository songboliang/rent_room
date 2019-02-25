package com.rentroom.service;

import com.rentroom.pojo.Address;

import java.util.List;

public interface IAddressService {

    void insertAddressInfo(Address address);

    List<Address> getAddressInfos();

}
