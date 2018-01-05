<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>角色添加界面</title>
<link rel="stylesheet" href="/css/layui.css"  media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	  <legend>角色添加</legend>
	</fieldset>
	
	<form class="layui-form" action="">
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">角色名称</label>
	    <div class="layui-input-block">
	      <input type="text" name="roleName" lay-verify="title" autocomplete="off" placeholder="请输入角色名称" class="layui-input">
	    </div>
	  </div>
	  
	  <div class="layui-form-item" pane="">
	    <label class="layui-form-label">角色状态</label>
	    <div class="layui-input-block">
	      <input type="checkbox" name="roleType" lay-skin="primary" title="是" checked=""><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>是</span><i class="layui-icon"></i></div>
	    </div>
	  </div> 
	  
	  <div class="layui-form-item" pane="">
	  	<label class="layui-form-label">功能列表</label>
	  	<div class="layui-input-block">
	  		<!-- 放ztree树 -->
	  		<ul id="treeDemo"></ul>
	  		
	  	</div>
	  </div>
	  
	  <div class="layui-form-item">
	    <button class="layui-btn" id="roleAddCommit" lay-submit="" lay-filter="demo2">提交</button>
	  </div>
	   
	</form>
	
</body>
<script src="/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });
  
  
});
</script>
<script type="text/javascript" src="/ztree/jquery-1.4.4.min.js" ></script>
<script type="text/javascript" src="/ztree/jquery.ztree.core.js"></script>
<script type="text/javascript" src="/ztree/jquery.ztree.excheck.js"></script>
<script type="text/javascript">
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
var code;

$(function(){
	//调用ajax找到ztree树
	$.ajax({
		type:"POST",
		url:"/sys/getSysZtree",
		data:{t:Math.random()},
		dataType:"json",
		success:function(msg){
			alert("ccc");
			zNodes = msg;
			console.log("ztree:isUser0");
			//初始化调用
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			console.log("ztree:isUser"); 
		}
	});
})
	
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
</script>


</html>