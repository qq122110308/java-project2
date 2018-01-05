package com.ry.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @author ry 
* @version 创建时间：2017年12月11日 上午9:07:57 
* 类说明   跳转到table.jsp 页面
*/
@Controller
@RequestMapping("/table")
public class Student2Controller {
	
	@RequestMapping("/student")
	public String toStudent(){
		return "table";
	}
}
 