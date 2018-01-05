package com.ry.Service;

import java.util.List;

import com.ry.PageInfo;
import com.ry.Entity.User;

/** 
* @author ry 
* @version 创建时间：2017年12月15日 上午9:45:54 
* 类说明 
*/
public interface UserService {
	int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByUserName(String UserName);
    
    List<User> selectAll();
    
    PageInfo<User> selectByPage(int pageIndex, int pageNum, int pageSum);
}
 