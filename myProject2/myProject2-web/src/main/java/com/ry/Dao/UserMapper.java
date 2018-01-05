package com.ry.Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.Entity.User;

@Component("userMapper")
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByUserName(String UserName);
    
    List<User> selectAll();
    
    List<User> selectByPage(int point, int pageSize);
    
    Long selectCount();
}