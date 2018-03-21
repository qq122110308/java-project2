package com.ry.aop;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.Signature;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;


/** 
* @author ry 
* @create 2018年2月26日 下午1:43:52 
* @describe Aspect切面类
*/
//@Component
//@Aspect
public class WebControllerAop {
	
//	private final static Logger log = LoggerFactory.getLogger(WebControllerAop.class);
//	
//	//指定切点
//	@Pointcut("execution(* com.ry.Controllers..*.*(..))")
//	public void executeService(){
//		
//	}
//	
//	// 前置通知，方法调用前被调用
//	public void doBeforeAdvice(JoinPoint  joinPoint){
//		//System.out.println("我是前置通知！");
//		//获取目标方法的参数信息
//		Object[] obj = joinPoint.getArgs();
//		//AOP代理类的信息 
//		joinPoint.getThis();
//		//代理的目标对象
//		joinPoint.getTarget();
//		//用的最多 通知的签名
//		Signature signature = joinPoint.getSignature();
//		//代理的是哪一个方法
//		System.out.println(signature.getName());  
//		//AOP代理类的名字
//		System.out.println(signature.getDeclaringTypeName()); 
//		//AOP代理类的类（class）信息
//		signature.getDeclaringType();
//		//获取RequestAttributes
//		RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
//		//从获取RequestAttributes中获取HttpServletRequest的信息 
//		HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST); 
//		//如果要获取Session信息的话，可以这样写：  
//	    //HttpSession session = (HttpSession) requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION);
//		Enumeration<String> enumeration = request.getParameterNames(); 
//		Map<String,String> parameterMap = Maps.newHashMap();  
//		while (enumeration.hasMoreElements()){  
//	        String parameter = enumeration.nextElement();  
//	        parameterMap.put(parameter,request.getParameter(parameter));  
//	    }  
//	    String str = JSON.toJSONString(parameterMap);  
//	    if(obj.length > 0) {  
//	        log.info("请求的参数信息为："+str);
//	    	//System.out.println("请求的参数信息为："+str);  
//	    }  
//	}
}
 