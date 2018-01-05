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
	<div id="box" class="layui-layout layui-layout-admin">	
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
      <li class="layui-nav-item"><a href="javascript:#;" data-method="notice" data-type="auto" class="box" >退出登录</a></li>
    </ul>
	</div>

  <div class="layui-side layui-nav-black" style="background-color: #000000;">
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
	    <div class="layui-tab-item layui-show">
	    	首页展示
	    </div>
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
      
      //console.log(isContinue);
      
      if(isContinue){
    	//新增一个Tab项
        element.tabAdd('demo', {
          title: $(this).text() //用于演示
          ,content: '<iframe name="iframe" src="'+$(this).attr("url")+'" scrolling="no" frameborder="no" width="100%" style="height:900px;" ><iframe>'
          ,id: $(this).attr("url") //实际使用一般是规定好的id，这里以时间戳模拟下
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

<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
  setTop: function(){
      var that = this; 
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '260px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()-300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: 'http://layer.layui.com/test/settop.html'
        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
        ,yes: function(){
          $(that).click(); 
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
    ,confirmTrans: function(){
      //配置一个透明的询问框
      layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
        time: 20000, //20s后自动关闭
        btn: ['明白了', '知道了', '哦']
      });
    }
    ,notice: function(){
      //示范一个公告层
      layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '300px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['退出', '拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">是否退出登录</div>'
        ,success: function(layero){
        	
        	
          var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'javascript:goOutLogin();'
          }); 
        }
      });
    }
    ,offset: function(othis){
      var type = othis.data('type')
      ,text = othis.text();
      
      layer.open({
        type: 1
        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        ,id: 'layerDemo'+type //防止重复弹出
        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
        ,btn: '关闭'
        ,btnAlign: 'c' //按钮居中
        ,shade: 0 //不显示遮罩
        ,yes: function(){
          layer.closeAll();
        }
      });
    }
  };
  
  $('#box .box').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
});


</script>
<script type="text/javascript" src="/jquery.js"></script>
<script type="text/javascript">
//退出登录
 function goOutLogin(){
	$.ajax({
		type:"POST",
		url:"/user/goOutLogin",
		data:{t:Math.random()},
		success:function(msg){
			//这里没意义，已经跳转到登录界面
		}
	});		  
 }	
</script>

</body>
</html>