package com.ry.Listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.event.ApplicationStartedEvent;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;

/** 
* @author ry 
* @version 创建时间：2017年11月24日 下午4:19:20 
* 类说明  事件监听
*参考：http://blog.csdn.net/liaokailin/article/details/48186331
*/
public class MyApplicationStartEventListener implements ApplicationListener<ApplicationStartedEvent>{
	
	private Logger logger = LoggerFactory.getLogger(MyApplicationStartEventListener.class);
	
	@Override
	public void onApplicationEvent(ApplicationStartedEvent event) {
		SpringApplication app = event.getSpringApplication();
		// 不显示banner信息
        logger.info("==MyApplicationStartedEventListener==");
	}
	
}
 