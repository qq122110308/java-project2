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
	
	<div class="layui-btn-group demoTable" id="layerDemo">
		<button class = "layui-btn layui-btn-normal" id="user_add"  data-method="t"  >添加</button>
		<button class = "layui-btn layui-btn-warm">修改</button>
		<button class = "layui-btn layui-btn-danger">删除</button>
	</div>

	<table class="layui-hide" id="userTable" lay-filter="user">
	  
	</table>
	
<script src="/layui.js"></script>
<script src="/lay/modules/form.js"></script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs "   lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

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
	      {checkbox:true,fixed:'left'}         
	      ,{field: 'userId', title: 'ID', width:80, sort: true, fixed: 'left'}
	      ,{field: 'userName', title: '用户名', width:250}
	      ,{field: 'userRealname', title: '用户昵称', width:100, sort: true}
	      ,{field: 'userSex', title: '用户性别', width:100} 
	      ,{field: 'userCreate', title: '用户创建时间', width: 200}
	      ,{field: 'userEmail', title: '用户邮箱', width: 200}
	      ,{fixed: 'right', align:'cneter',toolbar:'#barDemo', title:'操作'}	
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
	  
	  
	  $("#user_add").on("click",function(){
		var contents ="1";  
		layer.open({
			type: 2,
			area: ['90%','90%'],
			shadeClose: close,
			content: '/user/UserAdd'
		})
		
	  });
	  
	//监听工具条
	  table.on('tool(user)', function(obj){
	    var data = obj.data;
	    if(obj.event === 'detail'){
	      layer.msg('ID：'+ data.userId + ' 的查看操作');
	    } else if(obj.event === 'del'){
	      layer.confirm('真的删除行么', function(index){
	    	$.ajax({
	    		type:"POST",
	    		url:"/user/deleteUser",
	    		data:{"userId":data.userId},
	    		dataType:"json",
	    		success:function(res){
	    			if(res.code == "1"){
	    				layer.msg(res.message);
	    				obj.del();
	    			}
	    			else{
	    				layer.msg(res.message);
	    			}
	    		}
	    	})  
	        layer.close(index);
	      });
	    } else if(obj.event === 'edit'){
	    	//跳转到编辑界面
	    	//layer.alert('编辑行：<br>'+ JSON.stringify(data))
	    	layer.open({
	    		type: 2,
	    		area: ['90%','90%'],
	    		shadeClose: close,
	    		content: '/user/userDetail?userId='+data.userId
	    	})
	    }
	    
	  });
	  
	});
</script>
</body>
</html>