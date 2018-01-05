/*package com.ry.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ry.Entity.Student;
import com.ry.Service.StudentService;

import net.sf.json.JSONObject;

*//** 
* @author ry 
* @version 创建时间：2017年12月8日 下午5:47:53 
* 类说明    测试JDBC c 连接数据库
*//*
@RestController
@RequestMapping("/stu")
public class StudentController {
	private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/list")
	public void getStus(HttpServletResponse response){
		logger.info("从数据库读取student集合");
		//这里是可以打印出来的
		response.setContentType("application/json;charset=utf-8");
		List<Student> arrayList = studentService.getList();
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
	
	
	
	
	
	
}
 */