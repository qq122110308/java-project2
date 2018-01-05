package com.ry.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午12:24:08 
* 类说明   过滤器
*/
@WebFilter(filterName = "myFilter",urlPatterns = "/*")
public class MyFilter implements Filter{

	@Override
	public void destroy() {
		System.out.println("过滤器销毁");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("过滤器执行操作");
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("过滤器初始化");
	}
	
}
 