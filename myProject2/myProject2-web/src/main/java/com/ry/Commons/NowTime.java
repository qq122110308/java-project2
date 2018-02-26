package com.ry.Commons;

import java.text.SimpleDateFormat;
import java.util.Date;

/** 
* @author ry 
* @create2018年2月8日 上午11:05:49 
* @describe
*/
public class NowTime {
	public static String  getNowTime(){
		Date d = new Date();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(d);
	}
}
 