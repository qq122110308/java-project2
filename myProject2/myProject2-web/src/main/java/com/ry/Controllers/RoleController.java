package com.ry.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ry.PageInfo;
import com.ry.Commons.NowTime;
import com.ry.Dto.Message;
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
	
	/**
	 * 读取角色数据列表
	 * @param response
	 * @param page
	 * @param limit
	 */
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
	public ModelAndView goAdd(){
		//跳转界面
		Map<String, Object> model = new HashMap<String, Object>();
		//要带过去的参数
		ArrayList<sys> sysList = (ArrayList<sys>) sysService.selectAllSys();
		model.put("sysList", sysList);
		
		return new ModelAndView("role/roleAdd",model);
	}
	
	/**
	 * 添加角色
	 * @author ry
	 * @param role
	 * @return 
	 */
	@RequestMapping(value="/roleAddData",method=RequestMethod.POST)
	@ResponseBody
	public HashMap roleAddData(Role role){
		int flag = 0;
		Date d = new Date();
		role.setRoleCreatetime(NowTime.getNowTime());
		flag = roleService.insert(role);
		HashMap mes =new HashMap<>();
		if(flag >0){
			mes.put("code", 1);
			mes.put("message", "操作成功");
		}
		else{
			mes.put("code",0);
			mes.put("message","操作失败");
		}
			
		return mes;
	}
	
	/**
	 * 删除角色
	 * @author ry
	 * @param role
	 * @return
	 */
	@RequestMapping(value="deleteRole",method=RequestMethod.POST)
	@ResponseBody
	public Message deleteRole(Role role){
		int flag = roleService.deleteByPrimaryKey(role.getRoleId());
		if(flag > 0){
			return new Message(1, "操作成功");
		}
		else{
			return new Message(0,"操作失败");
		}
	}
	
	/**
	 * 角色详情
	 * @author ry
	 * @param roleId
	 * @return
	 */
	@RequestMapping(value="roleDetail",method=RequestMethod.GET)
	public ModelAndView showRoleDetail(int roleId){
		Role role = roleService.selectByPrimaryKey(roleId);
		Map<String, Object> model = new HashMap<>();
		model.put("roleObject", role);
		
		return new ModelAndView("/role/roleDetail",model);
	}
	
	
	/**
	 * 修改角色内容
	 * @author ry
	 * @param role
	 * @return
	 */
	@RequestMapping(value="roleUpdate",method=RequestMethod.POST)
	@ResponseBody
	public Message updateRole(Role role){
		int flag = 0;
		flag = roleService.updateByPrimaryKeySelective(role);
		
		if(flag > 0){
			return new Message(1, "操作成功");
		}
		else{
			return new Message(0, "操作失败");
		}
	}
	
	
	
}
 