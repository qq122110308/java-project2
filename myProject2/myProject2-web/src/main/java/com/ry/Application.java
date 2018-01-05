package com.ry;

import java.util.Properties;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;

import com.github.pagehelper.PageHelper;
import com.ry.Servlet.MyServlet;

/** 
* @author ry 
* @version 创建时间：2017年11月24日 下午3:59:15 
* 类说明 
*/
//运行Application， 数据库test 访问地址http://localhost:8080/user/login  登录用户名 13545152390 密码123456
@SpringBootApplication
@ServletComponentScan  //这里还可以用注解注册Servlet示例代码 不过要在Application所在包下 方法为：添加注解@ServletComponentScan
@MapperScan("com.ry.Dao")
public class Application {
	
	//这里还可以用注解注册Servlet示例代码 不过要在Application所在包下 方法为：添加注解@ServletComponentScan
	/*有个问题：DispatcherServlet 默认拦截“/”，MyServlet 拦截“/xs/*”，
	 * MyServlet2 拦截“/xs/myservlet”，
	 * 那么在我们访问 http://localhost:8080/xs/myservlet 的时候系统会怎么处理呢？
	 * 如果访问 http://localhost:8080/xs/abc 的时候又是什么结果呢？
	 * 这里就不给大家卖关子了，其结果是“匹配的优先级是从精确到模糊，复合条件的Servlet并不会都执行”
	 * 也可以改变DispatcherServlet的拦截方式。
	 */
/*	@Bean
	public ServletRegistrationBean servletRegistrationBean(){
		return new ServletRegistrationBean(new MyServlet(),"/xs/*");
	}*/
	
	private static final Logger logger = LoggerFactory.getLogger(Application.class);
	
	public static void main(String[] args) {
		//会扫描Application类所在目录下的Controller
		SpringApplication.run(Application.class, args);
	}
	
	@Bean
	public PageHelper pageHelper(){
		PageHelper pageHelper = new PageHelper();
	    Properties p = new Properties();
	    p.setProperty("offsetAsPageNum", "true");
	    p.setProperty("rowBoundsWithCount", "true");
	    p.setProperty("reasonable", "true");
	    p.setProperty("dialect", "mysql");
	    p.setProperty("supportMethodsArguments", "false");
	    p.setProperty("pageSizeZero", "true");
	    pageHelper.setProperties(p);
	    return pageHelper;
	}	
	
}
 