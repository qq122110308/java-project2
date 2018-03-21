package com.ry.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ry.entity.User;

/** 
* @author ry 
* @create 2018年3月19日 下午4:54:27 
* @describe
*/
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
 