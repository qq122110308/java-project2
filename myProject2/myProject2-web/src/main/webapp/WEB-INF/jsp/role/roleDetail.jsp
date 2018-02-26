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
	  <legend>角色详情</legend>
	</fieldset>
	
	<form class="layui-form layui-form-pane">
	  <!-- 隐藏的数据 -->
	  <input type="hidden"  id="roleId" name="roleId" value="${roleObject.roleId }" />
	  
	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色名称</label>
	    <div class="layui-input-block">
	      <input type="text" name="roleName" id="roleName" lay-verify="title" autocomplete="off" placeholder="请输入角色名称"  value="${roleObject.roleName }" class="layui-input">
	    </div>
	  </div>

	  <div class="layui-form-item" pane>
	    <label class="layui-form-label">角色状态</label>
	    <div class="layui-input-block">
	    	
	      <input type="radio" name="roleType" value="1" <c:if test="${roleObject.roleType eq  1}"> checked="checked" </c:if>  title="正常">
	      <input type="radio" name="roleType" value="0" <c:if test="${roleObject.roleType eq  0}"> checked="checked" </c:if> title="禁用">
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
<script type="text/javascript" src="/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	//保存修改的数据
	function commit(){
		$.ajax({
			type:"POST",
			url:"/role/roleUpdate",
			data:{"roleId":$("#roleId").val(),"roleName":$("#roleName").val(),"roleType":$("input[name='roleType']:checked").val()},
			sync:false,
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
		})
	}
</script>

</html>
