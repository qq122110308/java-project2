package com.ry.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 上午11:17:54 
* 类说明 
*/
@WebServlet(urlPatterns="/xs/myservlet",description="Servlet的说明") // 不指定name的情况下，name默认值为类全路径
public class MyServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">>>>>doGet()<<<<<");
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">>>>>>>>>>doPost()<<<<<<<<<<<");
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        out.println("<html>");  
        out.println("<head>");  
        out.println("<title>Hello World</title>");  
        out.println("</head>");  
        out.println("<body>");  
        out.println("<h1>大家好，我的名字叫Servlet</h1>");  
        out.println("</body>");  
        out.println("</html>"); 
	}
	
}
 