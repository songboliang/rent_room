package com.rentroom.service.impl;

import com.rentroom.dao.AddressMapper;
import com.rentroom.pojo.Address;
import com.rentroom.service.IAddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("addressService")
public class AddressServiceImpl implements IAddressService {

    @Resource
    private AddressMapper addressMapper;

    @Override
    public void insertAddressInfo(Address address) {

        addressMapper.insertAddressInfo(address);

    }

    @Override
    public List<Address> getAddressInfos() {
        return addressMapper.getAddressInfos();
    }
}
