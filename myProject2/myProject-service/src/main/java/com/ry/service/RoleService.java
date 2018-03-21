package com.ry.service;

import java.util.List;

import com.ry.PageInfo;
import com.ry.entity.Role;

/** 
* @author ry 
* @version 创建时间：2017年12月27日 上午11:32:53 
* 类说明 
*/
public interface RoleService {
	int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    
    List<Role> selectAll();
    
    PageInfo<Role> selectByPage(int pageIndex, int pageNum, int pageSum);
}
 