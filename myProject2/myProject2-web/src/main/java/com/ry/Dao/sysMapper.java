package com.ry.Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.Entity.sys;

@Component("sysmapper")
public interface sysMapper {
	
    int deleteByPrimaryKey(Integer sysId);

    int insert(sys record);

    int insertSelective(sys record);

    sys selectByPrimaryKey(Integer sysId);

    int updateByPrimaryKeySelective(sys record);

    int updateByPrimaryKey(sys record);
    
    public List selectAllSys();
}