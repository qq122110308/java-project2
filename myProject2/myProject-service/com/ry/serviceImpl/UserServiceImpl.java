package com.ry.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ry.PageInfo;
import com.ry.Dao.UserMapper;
import com.ry.Service.UserService;
import com.ry.entity.User;

/** 
* @author ry 
* @version 创建时间：2017年12月15日 上午9:46:53 
* 类说明 
*/
@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer userId) {
		return userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public int insert(User record) {
		return userMapper.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		return userMapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		return userMapper.updateByPrimaryKey(record);
	}

	@Override
	public User selectByUserName(String UserName) {
		return userMapper.selectByUserName(UserName);
	}

	@Override
	public List selectAll() {
		return userMapper.selectAll();
	}

	@Override
	public PageInfo<User> selectByPage(int pageIndex, int pageNum, int pageSum) {
		PageInfo pageInfo=new PageInfo();
		//根据条件获取总条数
		//Long count=userMapper.selectCount();
		if(pageSum>0){
			PageHelper.startPage(pageIndex, pageNum, false);
			List<User> list=userMapper.selectAll();
			PageInfo<User> page=new PageInfo<>(pageIndex, pageNum, pageSum, list);
			
			return page;
		}
		else{
			return null;
		}
	}
	
}
 