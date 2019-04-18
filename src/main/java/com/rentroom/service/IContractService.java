package com.rentroom.service;

import com.rentroom.pojo.Contract;
import com.rentroom.utils.Bean.PageBean;

import java.util.List;

public interface IContractService {

    /**
     * 插入合同信息
     * @param contract
     */
    void insertContractInfo(Contract contract);

    /**
     * 查看所有租赁信息
     * @return
     */
    PageBean findAllContract(int pageCode, int pageSize);


    /**
     * 通过合同Id查找合同
     * @param contractId
     * @return
     */
    Contract findContractById(String contractId);

}
