package com.rentroom.service;

import com.github.pagehelper.Page;
import com.rentroom.pojo.ApplyOut;
import com.rentroom.utils.Bean.PageBean;

public interface IApplyOutService {

    int insertApplyOut(ApplyOut applyOut);

    int deleteApplyOut(String applyId);

    //批量查询
    PageBean findAllApplying(int pageCode, int pageSize);

    int updateApplyOut(ApplyOut applyOut);

}
