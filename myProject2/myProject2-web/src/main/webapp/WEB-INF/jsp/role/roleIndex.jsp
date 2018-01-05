<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色首页</title>
<link rel="stylesheet" href="/css/layui.css" media="all">
</head>
<body style="height:100%">
	<div class="roleSearch" >
		搜索ID：
	 <div class="layui-inline">
	 	<input class="layui-input" name="userId" id="rolePageReload" autocomplete="off">
	 </div>
	  <button class="layui-btn" data-type="reload">搜索</button>
	</div>
	
	<div class="layui-btn-group demoTable" id="layerDemo" >
	  <button class="layui-btn layui-btn-normal" data-method="setTop"   >添加</button>
	  <button class="layui-btn layui-btn-warm" data-type="getCheckLength">修改</button>
	  <button class="layui-btn layui-btn-danger" data-type="isAll">删除</button>
	</div>

	
	<table class="layui-table" lay-data="{width: 892, height:332, url:'/role/roleIndex', page:true, id:'idTest'}" lay-filter="demo">
	  <thead>
	    <tr>
	      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
	      <th lay-data="{field:'roleId', width:80, sort: true, fixed: true}">ID</th>
	      <th lay-data="{field:'roleName', width:200}">角色名称</th>
	      <th lay-data="{field:'roleCreatetime', width:200, sort: true}">创建时间</th>
	      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>	
	    </tr>
	  </thead>
	</table>
	
	
<script src="/layui.js"></script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs "   lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
<script>
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){3
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
    	//跳转到编辑界面
        
    	//layer.alert('编辑行：<br>'+ JSON.stringify(data))
    }
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>

<script type="text/javascript">
layui.use('layer', function(){ //独立版的layer无需执行这一句
	var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
	var active ={
		setTop: function(){
		      var that = this; 
		      //多窗口模式，层叠置顶
		      layer.open({
		        type: 2 //此处以iframe举例
		        ,title: ''
		        ,area: ['800px', '600px']
		        ,shade: 0
		        ,maxmin: true
		        ,content: '/role/roleAdd'
		        ,btn: ['确认', '关闭'] //只是为了演示
		        ,yes: function(){
		        	roleAddCommint();
		          	//继续弹出的点击事件
		        	//$(that).click(); 
		        }
		        ,btn2: function(){
		        	layer.closeAll();
		        }
		        
		        ,zIndex: layer.zIndex //重点1
		        ,success: function(layero){
		          layer.setTop(layero); //重点2
		        }
		      });
		    }		
	}
	
	
	$('#layerDemo .layui-btn').on('click', function(){
	    var othis = $(this), method = othis.data('method');
	    active[method] ? active[method].call(this, othis) : '';
	  });
	
})
</script>


<script type="text/javascript" src="/jquery-1.8.3.min.js"></script>	
<script type="text/javascript" src="/role/role.js"></script>
	
</body>
</html>