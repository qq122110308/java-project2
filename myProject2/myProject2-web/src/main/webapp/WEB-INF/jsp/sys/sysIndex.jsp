<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>系统功能首页</title>
<link rel="stylesheet" href="/css/layui.css" media="all">
</head>
<body>
	<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
		<button class = "layui-btn layui-btn-normal"  onclick="add()">添加</button>
		<button class = "layui-btn layui-btn-warm" data-method="offset" data-type="auto" >修改</button>
		<button class = "layui-btn layui-btn-danger" >删除</button>
	</div>
	
	<table id="demoTable" lay-filter="test">
	  
	</table>
	
	
	<div id="layerDemo1">
	  <blockquote class="layui-elem-quote layui-quote-nm">
	    Tips：为了更清晰演示，每触发下述一个例子之前，都会关闭所有已经演示的层
	  </blockquote>
	  <button data-method="setTop" class="layui-btn">多窗口模式，层叠置顶</button>
	  <button data-method="confirmTrans" class="layui-btn">配置一个透明的询问框</button>
	  <button data-method="notice" class="layui-btn">示范一个公告层</button>
	  <button data-method="offset" data-type="t" class="layui-btn layui-btn-normal">上弹出</button>
	  <button data-method="offset" data-type="r" class="layui-btn layui-btn-normal">右弹出</button>
	  <button data-method="offset" data-type="b" class="layui-btn layui-btn-normal">下弹出</button>
	  <button data-method="offset" data-type="l" class="layui-btn layui-btn-normal">左弹出</button>
	  <button data-method="offset" data-type="lt" class="layui-btn layui-btn-normal">左上弹出</button>
	  <button data-method="offset" data-type="lb" class="layui-btn layui-btn-normal">左下弹出</button>
	  <button data-method="offset" data-type="rt" class="layui-btn layui-btn-normal">右上弹出</button>
	  <button data-method="offset" data-type="rb" class="layui-btn layui-btn-normal">右下弹出</button>
	  <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>
	</div>
	
<script src="/layui.js"></script>
<script type="text/javascript">
layui.use('table', function(){
	  var table = layui.table;
	  
	  //第一个实例
	  table.render({
	    elem: '#demoTable'
	    ,height: 315
	    ,url: '/sys/sysIndex' //数据接口
	    ,page: true //开启分页
	    ,cols: [[ //表头
	      {field: 'sysId', title: 'ID', width:80, sort: true, fixed: 'left'}
	      ,{field: 'sysName', title: '名称', width:150}
	      ,{field: 'sysUrl', title: '地址', width:150, sort: true}
	      ,{field: 'sysIcon', title: '图标', width:80} 
	      ,{field: 'sysType', title: '是否可用', width: 177}

	    ]]
	  });
	  
	});
</script>


<script type="text/javascript" src="/jquery.js"></script>

</body>
</html>