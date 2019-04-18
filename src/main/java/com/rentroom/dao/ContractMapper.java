package com.rentroom.dao;

import com.github.pagehelper.Page;
import com.rentroom.pojo.Contract;

import java.util.List;

public interface ContractMapper {

    /**
     * 插入合同信息
     * @param contract
     */
    void insertContractInfo(Contract contract);

    /**
     * 查看所有租赁信息
     * @return
     */
    Page<Contract> findAllContract();

    /**
     * 通过合同Id查找合同
      * @param contractId
     * @return
     */
    Contract findContractById(String contractId);
}
