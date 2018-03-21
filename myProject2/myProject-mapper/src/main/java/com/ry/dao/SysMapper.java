package com.ry.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.entity.sys;

/** 
* @author ry 
* @create 2018年3月19日 下午4:55:25 
* @describe
*/
@Component("sysMapper")
public interface SysMapper {
	int deleteByPrimaryKey(Integer sysId);

    int insert(sys record);

    int insertSelective(sys record);

    sys selectByPrimaryKey(Integer sysId);

    int updateByPrimaryKeySelective(sys record);

    int updateByPrimaryKey(sys record);
    
    public List selectAllSys();
}
 