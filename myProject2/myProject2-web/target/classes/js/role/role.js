/**
 * 
 */

function roleAdd(){
	//跳转到登录界面
	$.ajax({
		type:"POST",
		url:"/role/roleAdd",
		data:{t:Math.random()},
		success:function(msg){
			//这里进行跳转界面，不会执行这里的操作
		}
	})
}


function roleAddCommint(){
	$("#roleAddcommit").click();
}

