package com.rentroom.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentroom.dao.ApplyOutMapper;
import com.rentroom.pojo.ApplyOut;
import com.rentroom.pojo.SubscribeRoom;
import com.rentroom.service.IApplyOutService;
import com.rentroom.utils.Bean.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("applyOutService")
public class ApplyOutServiceImpl implements IApplyOutService {

    @Resource
    private ApplyOutMapper applyOutMapper;

    @Override
    public int insertApplyOut(ApplyOut applyOut) {
        return applyOutMapper.insertApplyOut(applyOut);
    }

    @Override
    public int deleteApplyOut(String applyId) {
        return applyOutMapper.deleteApplyOut(applyId);
    }


    @Override
    public PageBean findAllApplying(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode, pageSize);

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        Page<ApplyOut> page = applyOutMapper.findAllApplyOut();

        return new PageBean(pageCode, (int)Math.ceil((double)(page.getTotal() / (double)pageSize)), (int)page.getTotal(), pageSize, page.getResult());

    }

    @Override
    public int updateApplyOut(ApplyOut applyOut) {
        return applyOutMapper.updateApplyOut(applyOut);
    }
}
