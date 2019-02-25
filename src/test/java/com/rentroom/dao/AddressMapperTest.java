package com.rentroom.dao;

import com.rentroom.pojo.Address;
import com.rentroom.utils.RandUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class AddressMapperTest {

    @Autowired
    private AddressMapper addressMapper;

    @Test
    public void testInsertAddressInfo(){

        Address address=new Address();

        address.setAddId(RandUtil.getUUID());

        address.setAddressName("知新村");

        addressMapper.insertAddressInfo(address);
    }

    @Test
    public void testGetAddressInfos(){

        List<Address> addressInfos = addressMapper.getAddressInfos();

        System.out.println(addressInfos.get(0).getAddressName());
    }

}