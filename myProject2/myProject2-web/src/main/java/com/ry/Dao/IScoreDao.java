/*package com.ry.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ry.Entity.Score;

*//** 
* @author ry 
* @version 创建时间：2017年12月10日 下午12:43:54 
* 类说明 
*//*
public interface IScoreDao extends CrudRepository<Score, Integer>{
	
	@Transactional
	@Modifying
	@Query("update Score t set t.score =:score where t.id = :id")
	int updateScoreById(@Param("score") float score, @Param("id") int id);
	
	@Query("select t from Score t")
	List<Score> getList();
}
 */