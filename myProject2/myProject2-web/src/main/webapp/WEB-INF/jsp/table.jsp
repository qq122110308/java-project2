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
	<table id="demoTable" lay-filter="test">
	  
	</table>
	
<script src="/layui.js"></script>
<script type="text/javascript">
layui.use('table', function(){
	  var table = layui.table;
	  
	  //第一个实例
	  table.render({
	    elem: '#demoTable'
	    ,height: 315
	    ,url: '/stu/list' //数据接口
	    ,page: true //开启分页
	    ,cols: [[ //表头
	      {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
	      ,{field: 'name', title: '用户名', width:80}
	      ,{field: 'sumScore', title: '总分', width:80, sort: true}
	      ,{field: 'avgScore', title: '平均分', width:80} 
	      ,{field: 'age', title: '年龄', width: 177}
	      ,{field: 'score', title: '分数', width: 80, sort: true}
	      ,{field: 'sum', title: '总数', width: 80, sort: true}
	    ]]
	  });
	  
	});
</script>
	
</body>
</html>