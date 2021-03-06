package com.ry.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.stereotype.Service;

import com.ry.dao.SysMapper;
import com.ry.entity.sys;
import com.ry.service.SysSerivce;

/** 
* @author ry 
* @version 创建时间：2017年12月14日 下午1:06:47 
* 类说明 
*/
@Service("sysService")
public class SysServiceImpl implements SysSerivce{

	@Autowired
	SysMapper sysmapper;
	
	@Override
	public List selectByPrimaryKey() {
		sys s= sysmapper.selectByPrimaryKey(1);
		System.out.println(s);
		return null;
	}

	@Override
	public List selectAllSys() {
		List list = sysmapper.selectAllSys();
		return list;
	}
	
}
 