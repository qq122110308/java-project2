package com.ry.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ry.PageInfo;
import com.ry.Service.RoleService;
import com.ry.entity.Role;
import com.ry.entity.User;
import com.ry.mappers.RoleMapper;

/** 
* @author ry 
* @version 创建时间：2017年12月27日 上午11:33:23 
* 类说明 
*/
@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	RoleMapper roleMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer roleId) {
		return roleMapper.deleteByPrimaryKey(roleId);
	}

	@Override
	public int insert(Role record) {
		return roleMapper.insert(record);
	}

	@Override
	public int insertSelective(Role record) {
		return roleMapper.insertSelective(record);
	}

	@Override
	public Role selectByPrimaryKey(Integer roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

	@Override
	public int updateByPrimaryKeySelective(Role record) {
		return roleMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Role record) {
		return roleMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Role> selectAll() {
		
		return roleMapper.selectAll();
	}

	@Override
	public PageInfo<Role> selectByPage(int pageIndex, int pageNum, int pageSum) {
		PageInfo pageInfo=new PageInfo();
		//根据条件获取总条数
		//Long count=userMapper.selectCount();
		if(pageSum>0){
			PageHelper.startPage(pageIndex, pageNum, false);
			List<Role> list=roleMapper.selectAll();
			PageInfo<Role> page=new PageInfo<>(pageIndex, pageNum, pageSum, list);
			
			return page;
		}
		else{
			return null;
		}
	}

}
 