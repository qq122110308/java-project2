package com.ry.Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.Entity.Role;

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