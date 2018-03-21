package com.ry.runner;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午3:45:36 
* 类说明
* 实际应用中，我们会有在项目服务启动的时候就去加载一些数据或做一些事情这样的需求。 
* 为了解决这样的问题，Spring Boot 为我们提供了一个方法，
* 通过实现接口 CommandLineRunner 来实现。
*/
@Component
@Order(value=2)
public class MyStartupRunner1 implements CommandLineRunner{

	@Override
	public void run(String... arg0) throws Exception {
		System.out.println(">>>>>>>>>服务启动执行，执行加载数据等操作11111111<<<<<<<<<");
	}
	
}
 