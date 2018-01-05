<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>

<link rel="stylesheet" href="/css/layui.css">
</head>

<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">	
	<div class="layui-header">
		<div class="layui-logo">学生成绩系统后台管理</div>
		<!-- 头部区域（可配合layui已有的水平导航） -->
		<ul class="layui-nav layui-layout-left" style="display:none;">
	      <li class="layui-nav-item"><a href="">控制台</a></li>
	      <li class="layui-nav-item"><a href="">商品管理</a></li>
	      <li class="layui-nav-item"><a href="">用户</a></li>
	      <li class="layui-nav-item">
	        <a href="javascript:;">其它系统</a>
	        <dl class="layui-nav-child">
	          <dd><a href="">邮件管理</a></dd>
	          <dd><a href="">消息管理</a></dd>
	          <dd><a href="">授权管理</a></dd>
	        </dl>
	      </li>
	    </ul>
	    
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="/mypicture2.jpg" class="layui-nav-img">
          ${user.userName }
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="javascript:isOutLogin()">退出登录</a></li>
    </ul>
	</div>

  <div class="layui-side layui-nav-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
      	<c:forEach var="sysList1" items="${sysList }" >
      		<c:if test="${sysList1.sysLast eq 0 }">
      			<li class="layui-nav-item ">
	          	<a class="" href="javascript:;">${sysList1.sysName} </a>
	          	<dl class="layui-nav-child">
	          	<c:forEach var="sysList2" items="${sysList }">
      				<c:if test="${sysList2.sysLast eq sysList1.sysId }">
      					<dd><a href="javascript:;" class="site-demo-active" url="${sysList2.sysUrl }"  data-type="tabAdd" >${sysList2.sysName}</a></dd>
      				</c:if>
      			</c:forEach>
	          	</dl>
	          	</li>
      		</c:if>

      	</c:forEach>
      	
      	
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;" class="site-demo-active"  data-type="tabAdd" >列表一</a></dd>
            <dd><a href="javascript:;" class="site-demo-active"  data-type="tabAdd">列表二</a></dd>
            <dd><a href="javascript:;" class="site-demo-active"  data-type="tabAdd">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>	
	
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px; display:none;"></div>
    <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
	  <ul class="layui-tab-title">
	    <li class="layui-this" lay-id="11">网站设置</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">首页展示</div>
	  </div>
	</div>
    
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>	

<script src="/layui.js"></script>

<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  var $ = layui.jquery;
  
  
  //触发事件
  var active = {
    tabAdd: function(){
      //在这里先判断您是否已经存在该选项	
	  var titleName = $(this).text().trim();  
      console.log("titleName" + titleName);
      var isContinue = true;
      
      $(".layui-tab-title li").each(function(){
    	 console.log($(this).text()); 
		 if($(this).text().indexOf(titleName) > -1){
			 isContinue = false;
			 //并对该事件进行点击
			 $(this).click();
		 }
      });
      
      console.log(isContinue);
      
      if(isContinue){
    	//新增一个Tab项
        element.tabAdd('demo', {
          title: $(this).text() //用于演示
          ,content: '<iframe name="iframe" src="'+$(this).attr("url")+'" scrolling="no" frameborder="no" width="100%" style="height:700px;" ><iframe>'
          ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
        })
    	  
      }
      
    }
    ,tabDelete: function(othis){
      //删除指定Tab项
      element.tabDelete('demo', '44'); //删除：“商品管理”
      othis.addClass('layui-btn-disabled');
    }
    ,tabChange: function(){
      //切换到指定Tab项
      element.tabChange('demo', '22'); //切换到：用户管理
    }
  };
  
  $('.site-demo-active').on('click', function(){
    var othis = $(this), type = othis.data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
  
  //Hash地址的定位
  var layid = location.hash.replace(/^#test=/, '');
  console.log("layid:"+layid);
  element.tabChange('test', layid);
  
  element.on('tab(test)', function(elem){
    location.hash = 'test='+ $(this).attr('lay-id');
  });
  
  
});



</script>

</body>
</html>