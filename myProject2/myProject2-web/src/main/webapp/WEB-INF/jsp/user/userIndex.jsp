<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户首页</title>
<link rel="stylesheet" href="/css/layui.css" media="all">
</head>
<body style="height:100%">
	<div class="userSearch" >
		搜索ID：
	 <div class="layui-inline">
	 	<input class="layui-input" name="userId" id="demoReload" autocomplete="off">
	 </div>
	  <button class="layui-btn" data-type="reload">搜索</button>
	</div>
	
	<div>
		<button class = "layui-btn layui-btn-normal">添加</button>
		<button class = "layui-btn layui-btn-warm">修改</button>
		<button class = "layui-btn layui-btn-danger">删除</button>
	</div>

	<table class="layui-hide" id="userTable" lay-filter="user">
	  
	</table>
	
<script src="/layui.js"></script>
<script type="text/javascript">
layui.use('table', function(){
	  var table = layui.table;
	  
	  //第一个实例
	  table.render({
	    elem: '#userTable'
	    ,height: 500
	    ,url: '/user/userIndex' //数据接口
	    ,page: true //开启分页
	    ,cols: [[ //表头
	      {field: 'userId', title: 'ID', width:80, sort: true, fixed: 'left'}
	      ,{field: 'userName', title: '用户名', width:250}
	      ,{field: 'userRealname', title: '用户昵称', width:100, sort: true}
	      ,{field: 'userSex', title: '用户性别', width:100} 
	      ,{field: 'userCreate', title: '用户创建时间', width: 200}
	      ,{field: 'userEmail', title: '用户邮箱', width: 200}
	    ]]
	  	,id: 'userReload'
	  	,page: true
	  });
	  
	  var $ = layui.$, active = {
	    reload: function(){
	      var demoReload = $('#demoReload');
	      
	      //执行重载
	      table.reload('userReload', {
	        page: {
	          curr: 1 //重新从第 1 页开始
	        }
	        ,where: {
	          key: {
	            id: demoReload.val()
	          }
	        }
	      });
	    }
	  };
			  
	  $('.userSearch .layui-btn').on('click', function(){
	    var type = $(this).data('type');
	    active[type] ? active[type].call(this) : '';
	  });	  
	  
	});
</script>
</body>
</html>