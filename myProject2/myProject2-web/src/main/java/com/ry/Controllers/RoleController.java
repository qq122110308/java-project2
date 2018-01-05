package com.ry.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ry.PageInfo;
import com.ry.Entity.Role;
import com.ry.Entity.sys;
import com.ry.Service.RoleService;
import com.ry.Service.SysSerivce;

import net.sf.json.JSONObject;

/** 
* @author ry 
* @version 创建时间：2017年12月27日 上午11:03:15 
* 类说明 
*/
@Controller
@RequestMapping("/role")
public class RoleController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	SysSerivce sysService;
	
	private static final Logger logger = LoggerFactory.getLogger(RoleController.class);
	
	@RequestMapping("/goIndex")
	public String goIndex(){
		return "role/roleIndex";
	}
	
	
	@RequestMapping("/roleIndex")
	public void roleIndex(HttpServletResponse response, Integer page, Integer limit){
		if(page == null ){
			page = 1;
		}
		if(limit == null){
			limit = 10;
		}
		logger.info("从数据库读取user集合");
		//这里是可以打印出来的
		response.setContentType("application/json;charset=utf-8");
		List<Role> arrayList = roleService.selectAll();
		PageInfo<Role> pageInfo = roleService.selectByPage(page, limit,arrayList.size());
		
		HashMap map = new HashMap<>();
		map.put("code", 0);
		map.put("msg", "");
		map.put("count", arrayList.size());
		map.put("data", pageInfo.getList());
		JSONObject jsonObj = JSONObject.fromObject(map);
		String result = jsonObj.toString();
		PrintWriter pw;
		//System.out.println("result : "+result);
		try {
			pw = response.getWriter();
			pw.write(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/roleAdd")
	public String goAdd(){
		//跳转界面
		
		return "role/roleAdd";
	}
	
	
	@RequestMapping("/roleAddData")
	public String roleAddData(Role role){
		
		
		return "role/roleIndex";
	}
	
}
 