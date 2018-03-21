package com.ry.entity;
/*package com.ry.Entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

*//** 
* @author ry 
* @version 创建时间：2017年12月10日 下午12:44:18 
* 类说明  实体类
*//*
@Entity
@Table(name = "score")
public class Score  implements Serializable{
	
	@Id
	@GeneratedValue
	private int id;
	
	@Column(nullable = false, name = "STUDENTID") // 这里说一下，我使用指定数据库列的时候，使用小写会不起作用，修改为大写便正常了。不知道为何，如果遇到一样问题的可以尝试下。
	private int stuId;
	
	@Column(nullable = false, name = "SUBJECTNAME")
	private String subjectName;
	
	@Column(nullable = false)
	private float score;
	
	@Column(nullable = false, name = "EXAMTIME")
	private Date examTime;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public Date getExamTime() {
		return examTime;
	}

	public void setExamTime(Date examTime) {
		this.examTime = examTime;
	}
	
	
	
}
 */