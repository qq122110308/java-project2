package com.ry.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.entity.Role;

/** 
* @author ry 
* @create 2018年3月19日 下午4:53:30 
* @describe
*/
@Component("roleMapper")
public interface RoleMapper {
	int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    List<Role> selectAll();
    
    
    Long selectCount();
}
 