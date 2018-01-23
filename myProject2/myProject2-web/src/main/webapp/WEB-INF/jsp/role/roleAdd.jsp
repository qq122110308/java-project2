<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>角色添加界面</title>
<link rel="stylesheet" href="/css/layui.css"  media="all">
<script src="/lay/modules/form.js"></script>
<script src="/lay/modules/form.js"></script>

</head>
<body>	
	<div class="layui-tab-item layui-show">

	<div class="layui-main">
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	  <legend>角色添加</legend>
	</fieldset>
	
	<form class="layui-form layui-form-pane" action="">
	  
	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色名称</label>
	    <div class="layui-input-block">
	      <input type="text" name="roleName" lay-verify="title" autocomplete="off" placeholder="请输入角色名称" class="layui-input">
	    </div>
	  </div>
	  
	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色状态</label>
	    <div class="layui-input-block">
	      <input type="radio" name="sex" value="男" title="男">
	      <input type="radio" name="sex" value="女" title="女">
	    </div>
	  </div> 
	  
	  <div class="layui-form-item " pane>
	  	<label class="layui-form-label">功能列表</label>
	  	<div class="layui-input-block">
	  		<!-- 放ztree树 -->
	  		<ul id="treeDemo"></ul>
	  		
	  	</div>
	  </div>
	  
	  <div class="layui-form-item">
	    <button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>
	  </div>
	   
	</form>
	</div>
	</div>
</body>



<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script type="text/javascript" src="/ztree/jquery.ztree.core.js"></script>
<script type="text/javascript" src="/ztree/jquery.ztree.excheck.js"></script>
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
  var zNodes = [];
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
  
//调用ajax找到ztree树
	
$.ajax({
	type:"POST",
	url:"/sys/getSysZtree",
	data:{t:Math.random()},
	async:true,
	dataType:"json",
	success:function(msg){
		zNodes = msg;
		console.log("ztree:isUser0");
		//初始化调用
		$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		console.log("ztree:isUser"); 
	},
	error:function(msg){
		console.log(msg);
		alert(msg);
	}
	
});
return false;

function showCode(str){
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}
	
function setCheck() {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	py = $("#py").attr("checked")? "p":"",
	sy = $("#sy").attr("checked")? "s":"",
	pn = $("#pn").attr("checked")? "p":"",
	sn = $("#sn").attr("checked")? "s":"",
	type = { "Y":py + sy, "N":pn + sn};
	zTree.setting.check.chkboxType = type;
	showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
}
  
  
  
});
</script>



</html>