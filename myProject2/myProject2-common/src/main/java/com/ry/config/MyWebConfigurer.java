package com.ry.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午2:06:05 
* 类说明  将自定义拦截器添加到容器中
*/
@Configuration
public class MyWebConfigurer extends WebMvcConfigurerAdapter{
	
	public void addInterceptors(InterceptorRegistry registry){
		//多个拦截器组成一个拦截器链
		//addPathPatterns 用于添加拦截器规则
		//excludePathPatterns 用户排除拦截器
		//注册多个拦截器
		registry.addInterceptor(new com.ry.inteceptor.LoginInterceptor()).addPathPatterns("/**");
		//registry.addInterceptor(new MyInterceptor()).addPathPatterns("/**");
        //registry.addInterceptor(new MyInterceptor2()).addPathPatterns("/**");
        super.addInterceptors(registry);
        
	}
	
	//静态资源访问  应该不经过拦截器
/*	public void addResourceHandler(ResourceHandlerRegistry registry){
		registry.addResourceHandler("/").addResourceLocations("classpath:/resources/");
		
		super.addResourceHandlers(registry);
	}*/
	
}
 