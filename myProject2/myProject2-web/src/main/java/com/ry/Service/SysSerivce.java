package com.ry.Service;

import java.util.List;

import org.springframework.stereotype.Service;

/** 
* @author ry 
* @version 创建时间：2017年12月14日 下午1:03:29 
* 类说明 
*/

public interface SysSerivce {
	public List selectByPrimaryKey();
		
	
	//查询所有的左侧功能列表
	public List selectAllSys();
}
 