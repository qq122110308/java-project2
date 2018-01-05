<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>表格演示</title>
<link rel="stylesheet" href="/css/layui.css" media="all">
</head>
<body>
	<table class="layui-table" lay-data="{height:315, url:'/stu/list', page:true, id:'test'}" lay-filter="test">
	  <thead>
	    <tr>
	      <th lay-data="{field:'id', width:80, sort: true}">ID</th>
	      <th lay-data="{field:'name', width:80}">用户名</th>
	      <th lay-data="{field:'score_num', width:80, sort: true}">总分</th>
	      <th lay-data="{field:'score_avg'}">平均分</th>
	      <th lay-data="{field:'age'}">年龄</th>
	      <th lay-data="{field:'score', sort: true}">分数</th>
	      <th lay-data="{field:'sum', sort: true}">总计</th>
	    </tr>
	  </thead>
	</table>
	
	
<script src="/layui.js"></script>
<script type="text/javascript">
	layui.use('table', function(){
	  
	  
	});	
</script>
</body>
</html>