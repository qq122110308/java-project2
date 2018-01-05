package com.ry.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


/** 
* @author ry 
* @version 创建时间：2017年12月15日 上午9:32:28 
* 类说明    拦截器  用来判断用户是否登录
*/
public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
			
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	//处理请求资源前判断用户是否登录
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		HttpSession session = request.getSession();
		
		String url = request.getRequestURL().toString();
		
//		String url1 = request.getRealPath("../");//存放在d盘的地址
//		String url2 = request.getContextPath();// 项目应用地址   /myProject1
		
		if(url.indexOf("user/login") >= 0 || url.indexOf(request.getContextPath()+"/user/islogin") >= 0){
			return true;
		}
		else{
			if(session.getAttribute("user")== null){
				//跳转页面
				String message = java.net.URLEncoder.encode("请先进行登录！","utf-8"); 
				//request.setAttribute("message", message);
				//request.getRequestDispatcher(request.getContextPath() +"/user/login").forward(request, response);
				response.sendRedirect(request.getContextPath() +"/user/login?message="+message);
				return false;	
			}
			else{
				return true;
			}
		}
		
		
		
		
	}

}
 