/*package com.ry.Controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ry.Dao.IScoreDao;
import com.ry.Entity.Score;

*//** 
* @author ry 
* @version 创建时间：2017年12月10日 下午12:56:10 
* 类说明 
*//*
@RestController
@RequestMapping("/score")
public class ScoreController {
	private static final Logger logger = LoggerFactory.getLogger(ScoreController.class);
	
	@Autowired
	private IScoreDao scoreService;
	
	@RequestMapping("/scoreList")
	public List<Score> getScoreList(){
		logger.info("从数据库中读取Score集合");
		//测试更新数据库
		logger.info("更新的行数："+ scoreService.updateScoreById(88.8f, 1));
		
		return scoreService.getList();
	}
}
 */