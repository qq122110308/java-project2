package com.ry.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ry.Entity.sys;
import com.ry.Service.SysSerivce;

import net.sf.json.JSONObject;

/** 
* @author ry 
* @version 创建时间：2017年12月14日 下午2:09:14 
* 类说明   系统功能
*/
@Controller
@RequestMapping("/sys")
public class SysController {

	private static final Logger logger = LoggerFactory.getLogger(SysController.class);
	
	@Autowired
	SysSerivce sysService;
	
	@RequestMapping("/list")
	public void getList(){
		sysService.selectByPrimaryKey();
	}
	
	@RequestMapping("/goIndex")
	public String goIndex(){
		return "sys/sysIndex";
	}
	
	
	//返回左侧菜单所有功能
	@RequestMapping(value = "allList" )
	public String getSysList(HttpServletRequest request){
		List sysList = sysService.selectAllSys();
		request.setAttribute("sysList", sysList);
		return "index";
	}
	
	//仿照StudentController 这个来写
	@RequestMapping(value = "/sysIndex")
	//这里应该分页查询，回去再处理
	public void sysIndex(HttpServletResponse response){
		logger.info("从数据库读取student集合");
		//这里是可以打印出来的
		response.setContentType("application/json;charset=utf-8");
		List<sys> arrayList = sysService.selectAllSys();
		HashMap map = new HashMap<>();
		map.put("code", 0);
		map.put("msg", "");
		map.put("count", arrayList.size());
		map.put("data", arrayList);
		JSONObject jsonObj = JSONObject.fromObject(map);
		String result = jsonObj.toString();
		PrintWriter pw;
		System.out.println("result : "+result);
		try {
			pw = response.getWriter();
			pw.write(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 用于zTree树的显示，这个是数据  但我用ajax请求好像是同步jax 成功后 success函数不会调用
	 * @return
	 */
	@RequestMapping(value="/getSysZtree",produces = "application/json; charset=utf-8")
	public void getSysZtree(HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		HashMap map = new HashMap<>();
		
		//预读取数据  读取系统的所有功能
		List<sys> sysList = sysService.selectAllSys();
		StringBuffer sb = new StringBuffer();
		//用迭代器的区别
		for (sys sys1 : sysList) {
			//判断是否为父级，这里只给到了二级菜单
			if(sys1.getSysLast().equals("0")){
				sb.append("{ \"id\":\""+sys1.getSysId()+"\", \"pId\":\""+sys1.getSysLast()+"\", \"name\":\""+sys1.getSysName()+"\"}");
			}
			else{
				sb.append(",{ \"id\":\""+sys1.getSysId()+"\", \"pId\":\""+sys1.getSysLast()+"\", \"name\":\""+sys1.getSysName()+"\"}");
			}
			//找到对应顶级菜单的子菜单
			for (sys sysSon : sysList) {
				if (sysSon.getSysLast().equals(sys1.getSysId())) {
					sb.append(",{ \"id\":\""+sysSon.getSysId()+"\", \"pId\":\""+sysSon.getSysLast()+"\", \"name\":\""+sysSon.getSysName()+"\"}");
				}
			}
		}
//		map.put("zTree", "["+sb.toString()+"]");
//		JSONObject jsonObj = JSONObject.fromObject(map);
		String result = "["+sb.toString()+"]";
		PrintWriter pw;
		System.out.println("result : "+result);
		try {
			pw = response.getWriter();
			pw.write(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//return "["+sb.toString()+"]";
	}
	
}
 