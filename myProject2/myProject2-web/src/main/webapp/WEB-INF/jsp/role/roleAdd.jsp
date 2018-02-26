<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>角色添加界面</title>
<link rel="stylesheet" href="/css/layui.css"  media="all">
<link rel="stylesheet" href="/css1/demo.css" type="text/css">
<link rel="stylesheet" href="/css1/zTreeStyle/zTreeStyle.css" type="text/css">

</head>
<body>	
	<div class="layui-tab-item layui-show">

	<div class="layui-main">
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	  <legend>角色添加</legend>
	</fieldset>
	
	<form class="layui-form layui-form-pane">
	  
	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色名称</label>
	    <div class="layui-input-block">
	      <input type="text" name="roleName" id="roleName" lay-verify="title" autocomplete="off" placeholder="请输入角色名称" class="layui-input">
	    </div>
	  </div>
	  
	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色状态</label>
	    <div class="layui-input-block">
	      <input type="radio" name="roleType" value="1" title="正常">
	      <input type="radio" name="roleType" value="0" title="禁用">
	    </div>
	  </div> 
	  
	  <div class="layui-form-item " pane>
	  	<label class="layui-form-label">功能列表</label>
  		<div class="layui-input-block">
  			<c:forEach items="${sysList }" var="sys" varStatus="status" >
	  			<input type="checkbox" name="${sys.sysName}" lay-skin="primary" title="${sys.sysName}" >
	  			<div class="layui-unselect layui-form-checkbox " lay-skin="primary">
	  				<span>${sys.sysName}</span>
	  				<i class="layui-icon"></i>
	  			</div>
	  		</c:forEach>
  		</div>
	  </div>
	  
	  <div class="layui-item">
	  	<input type="button" class="layui-btn"  onclick="commit()"  value="提交"/>
	  </div>
	   	
	</form>
	</div>
	</div>
</body>



<script src="/layui.js"></script>
<script src="/lay/modules/form.js"></script>
<script>
 layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');

  var code;
  var $ = layui.$;
  
  
  
  
  //监听提交
/*   form.on('submit(addRole)',function(data){
	  
	  
  }); */


}); 
</script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script type="text/javascript" src="/ztree/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="/ztree/jquery.ztree.core.js"></script>
<script type="text/javascript" src="/ztree/jquery.ztree.excheck.js"></script>

<script type="text/javascript">

//调用ajax找到ztree树
var code;


/* $.ajax({
	type:"POST",
	url:"/sys/getSysZtree",
	data:{t:Math.random()},
	dataType:"json",
	success:function(msg){
		//console.log(msg);
		console.log(msg["zTree"]);
		var zNodes = eval("("+msg["zTree"]+")");
		//var zNodes = msg["zTree"];
		var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};	
		console.log(zNodes);
		//初始化调用
		$.fn.zTree.init($("#treeDemo"), setting, zNodes);
	},
	error:function(msg){
		//layer.msg("错误");
		console.log("JSON格式错误");
	}
	
}); */

</script>

<script type="text/javascript">
function commit(){
	  $.ajax({
		 type:"POST",
		 //contentType:"application/json",
		 url:"/role/roleAddData",
		 data:{"roleId":1,"roleCreatetime":"2222","roleName":$("#roleName").val(),"roleType":$("input[name='roleType']:checked").val()},
		 sync: false,//同步
		 success:function(data){
			if(data.code == "1"){
				layer.msg(data.message);
				//假设这是iframe页
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index); //再执行关闭   				
			}
			else{
				layer.msg(data.message);
			}
			 
		 }
	  });
}	
</script>


</html>