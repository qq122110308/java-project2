package com.ry.Dto; 
/** 
* @author ry 
* @create2018年2月8日 下午4:33:09 
* @describe
*/
public class Message {
	
	private int code;
	private String message;

	public Message(int code, String message) {
		super();
		this.code = code;
		this.message = message;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
 