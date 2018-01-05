package com.ry.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/** 
* @author ry 
* @version 创建时间：2017年11月24日 下午3:57:23 
* 类说明  测试 SpringBoot 
*/

//@RestController (这个只能返回数据)
@Controller
@RequestMapping(value = "/springboot")
public class HelloController {
	
	
	
	@RequestMapping("/first")
	public String returnFirst(){
		return "first";
	}
	
	@RequestMapping( value = "/{name}", method = RequestMethod.GET)
	public String sayWorld(@PathVariable("name") String name)
	{
		return "first";
	}
	
	
	@RequestMapping(value = "/{name}/{index}" , method = RequestMethod.GET)
	public ModelAndView gotoIndex(@PathVariable("index") String index){
		return new ModelAndView("redirect:/index.jsp");
	
	}
	
}
 