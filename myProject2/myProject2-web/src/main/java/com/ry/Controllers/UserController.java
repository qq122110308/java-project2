package com.ry.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ry.PageInfo;
import com.ry.Entity.User;
import com.ry.Entity.sys;
import com.ry.Service.SysSerivce;
import com.ry.Service.UserService;

import net.sf.json.JSONObject;

/** 
* @author ry 
* @version 创建时间：2017年12月15日 上午10:01:06 
* 类说明 
*/
@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	SysSerivce sysService;
	
	/**
	 * 跳转到登录界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String gologin(HttpServletRequest request){
		String message = request.getParameter("message");
		System.out.println("message : "+message);
		request.setAttribute("message", message);
		return "login";
	}
	
	@RequestMapping("/goIndex")
	public String goIndex(){
		return "user/userIndex";
	}
	
	@RequestMapping("/userIndex")
	public void userIndex(HttpServletResponse response, Integer page, Integer limit){
		if(page == null ){
			page = 1;
		}
		if(limit == null){
			limit = 10;
		}
		logger.info("从数据库读取user集合");
		//这里是可以打印出来的
		response.setContentType("application/json;charset=utf-8");
		List<User> arrayList = userService.selectAll();
		PageInfo<User> pageInfo = userService.selectByPage(page, limit,arrayList.size());
		
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
	
	//用户正在进行登录
	@RequestMapping(value = "islogin", method = RequestMethod.POST)
	public String isLogin(String username, String password,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//通过用户名来判断用户是否存在
		User user= userService.selectByUserName(username);
		if(user != null){
			if(user.getUserPass().equals(password)){
				//存用户session  并且处理一下左侧菜单
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				List sysList = sysService.selectAllSys();
				session.setAttribute("sysList", sysList);
				return "index";
			}
			else{
				String message = java.net.URLEncoder.encode("密码错误","utf-8");
				response.sendRedirect(request.getContextPath() +"/user/login?message="+message);
			}
		}
		else{
			String message = java.net.URLEncoder.encode("用户不存在","utf-8");
			response.sendRedirect(request.getContextPath() +"/user/login?message="+message);
		}
		
		return "";
	}
	
	
	//用户退出登录
	@RequestMapping(value="goOutLogin", method= RequestMethod.POST)
	public String goOutLogin(HttpServletRequest request){
		//清除用户session
		HttpSession session = request.getSession();
		//清除用户session
		session.removeAttribute("user");
		return "redirect:/user/login";
	}
	
}
 