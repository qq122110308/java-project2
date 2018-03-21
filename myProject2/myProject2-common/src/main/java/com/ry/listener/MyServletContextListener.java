package com.ry.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午12:33:28 
* 类说明   监听器
* 使用WebListener,实现ServletContextListener接口
*/
@WebListener
public class MyServletContextListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("ServletContext销毁");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("ServletContext初始化");
		System.out.println(sce.getServletContext().getServerInfo());
	}

}
 