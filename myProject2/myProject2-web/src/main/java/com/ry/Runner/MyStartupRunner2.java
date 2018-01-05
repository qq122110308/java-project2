package com.ry.Runner;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/** 
* @author ry 
* @version 创建时间：2017年12月8日 下午3:49:53 
* 类说明  服务启动执行
*/
@Component
@Order(value=1)
public class MyStartupRunner2 implements CommandLineRunner{

	@Override
	public void run(String... arg0) throws Exception {
		System.out.println(">>>>>>>>>>>>>>>服务启动执行，执行加载数据等操作 22222222 <<<<<<<<<<<<<");
	}
	
}
 