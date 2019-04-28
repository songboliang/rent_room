package com.rentroom.dao;

import com.github.pagehelper.Page;
import com.rentroom.pojo.ApplyOut;
import com.rentroom.pojo.Contract;

public interface ApplyOutMapper {

    int insertApplyOut(ApplyOut applyOut);

    int deleteApplyOut(String applyId);

    Page<ApplyOut> findAllApplyOut();

    int updateApplyOut(ApplyOut applyOut);

}
