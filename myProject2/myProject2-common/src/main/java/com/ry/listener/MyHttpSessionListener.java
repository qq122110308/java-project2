package com.ry.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午12:38:21 
* 类说明  监听Session的创建与销毁
*/
@WebListener
public class MyHttpSessionListener implements HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println("Session 被创建");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("ServletCOntext初始化");
	}
	
}
 