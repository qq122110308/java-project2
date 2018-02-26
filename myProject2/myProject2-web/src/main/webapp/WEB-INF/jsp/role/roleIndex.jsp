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
	 	<input class="layui-input" name="roleId" id="demoReload" autocomplete="off">
	 </div>
	  <button class="layui-btn" data-type="reload">搜索</button>
	</div>
	
	<div class="layui-btn-group demoTable" id="layerDemo" >
	  <button class="layui-btn layui-btn-normal" id="role_add"  data-method="t"   >添加</button>
	  <button class="layui-btn layui-btn-warm" data-type="getCheckLength">修改</button>
	  <button class="layui-btn layui-btn-danger" data-type="isAll">删除</button>
	</div>

	
	<table class="layui-hide" id="roleTable" lay-filter="role"  >
	</table>
	
	
<script src="/layui.js"></script>
<script src="/lay/modules/form.js"></script>

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs "   lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
<script>
layui.use('table', function(){
  var table = layui.table;
  
//第一个实例
	 table.render({
	   elem: '#roleTable'
	   ,height: 500
	   ,url: '/role/roleIndex' //数据接口
	   ,page: true //开启分页
	   ,cols: [[ //表头
	      {checkbox:true,fixed:'left'}        
	     ,{field: 'roleId', title: 'ID', width:80, sort: true, fixed: 'left'}
	     ,{field: 'roleName', title: '角色名称', width:250}
	     ,{field: 'roleType', title: '状态',  sort: true}
	     ,{field: 'roleCreatetime', title: '创建时间'}
	     ,{fixed: 'right', align:'cneter',toolbar:'#barDemo', title:'操作'}
	   ]]
	 	,id: 'roleReload'
	 	,page: true
	 });
	 
	 var $ = layui.$, active = {
	   reload: function(){
	     var demoReload = $('#demoReload');
	     
	     //执行重载
	     table.reload('roleReload', {
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

	 $('.roleSearch .layui-btn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
      }); 
  
  
  
  //监听表格复选框选择
  table.on('checkbox(role)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(role)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.roleId + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	$.ajax({
    		type:"POST",
    		url:"/role/deleteRole",
    		data:{"roleId":data.roleId},
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
    		content: '/role/roleDetail?roleId='+data.roleId
    	})
    }
    
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('roleReload')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('roleReload')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('roleReload');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
  
  $("#role_add").on("click",function(){
	var contents ="1";  
	layer.open({
		type: 2,
		area: ['90%','90%'],
		shadeClose: close,
		content: '/role/roleAdd'
	})
	
  });	
});
</script>



<script type="text/javascript" src="/jquery-1.8.3.min.js"></script>	
<script type="text/javascript" src="/role/role.js"></script>
	
</body>
</html>