package com.rentroom.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentroom.dao.ContractMapper;
import com.rentroom.pojo.Contract;
import com.rentroom.pojo.User;
import com.rentroom.service.IContractService;
import com.rentroom.utils.Bean.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("contractService")
public class ContractServiceImpl implements IContractService {

    @Resource
    private ContractMapper contractMapper;

    @Override
    public void insertContractInfo(Contract contract) {
        contractMapper.insertContractInfo(contract);
    }


    @Override
    public PageBean findAllContract(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode,pageSize);
        Page<Contract> page = contractMapper.findAllContract();
        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());
    }

    @Override
    public Contract findContractById(String contractId) {
        return contractMapper.findContractById(contractId);
    }
}
