/*package com.ry.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.ry.Entity.Student;

*//** 
* @author ry 
* @version 创建时间：2017年12月8日 下午5:36:24 
* 类说明  测试 JDBC
*//*
@Service
public class StudentService {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Student> getList(){
		String sql = "SELECT ID,NAME,SCORE,SUM,SCORE_SUM,SCORE_AVG,AGE from STUDENT";
		return (List<Student>)jdbcTemplate.query( sql, new RowMapper<Student>() {
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException{
				Student stu =new Student();
				stu.setId(rs.getInt("ID"));
				stu.setAge(rs.getInt("AGE"));
                stu.setName(rs.getString("NAME"));
                stu.setSumScore(rs.getString("SCORE_SUM"));
                stu.setAvgScore(rs.getString("SCORE_AVG"));
                stu.setSum(rs.getString("SUM"));
                stu.setScore(rs.getString("SCORE"));
                return stu;
			}
		});
				
	}
}
 */