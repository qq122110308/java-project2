package com.ry.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ry.PageInfo;
import com.ry.Dao.RoleMapper;
import com.ry.Entity.Role;
import com.ry.Entity.User;
import com.ry.Service.RoleService;

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
		return 0;
	}

	@Override
	public int insert(Role record) {
		return 0;
	}

	@Override
	public int insertSelective(Role record) {
		return 0;
	}

	@Override
	public Role selectByPrimaryKey(Integer roleId) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Role record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Role record) {
		return 0;
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
 