package com.rentroom.dao;

import com.rentroom.pojo.Address;

import java.util.List;

public interface AddressMapper {

    void insertAddressInfo(Address address);

    List<Address> getAddressInfos();

}
