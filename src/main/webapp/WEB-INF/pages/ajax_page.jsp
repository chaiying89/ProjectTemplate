<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试ajax</title>
<style type="text/css">
.register_content {
	width: 400px;
	line-height: 30px;
	margin: 0 auto;
	margin-top: 100px;
}
.green_span {
	font-size: 12px;
	color:green;
}
.red_span {
	font-size: 12px;
	color:red;
}
</style>

<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#username").blur(function(){
		var nameVal = $(this).val();
		$.ajax({
			url:"ajax",
			dataType:"JSON",
			success:function(data){
				var span = $("span");
				if(nameVal == data.username) {
					span.attr("class", "red_span").html("用户已被占用");
				} else if(!$.trim(nameVal)) {
					span.attr("class", "red_span").html("请输入用户名");
				} else {
					span.attr("class", "green_span").html("该用户用户");
				}
			},
			error:function(e){
				alert("服务器连接失败");
			}
		});
	});
});
</script>
</head>
<body>

你好，<shiro:principal/>! <a href="<%=request.getContextPath()%>/logout">退出</a>
<div class="register_content">
用户名：<input type="text" id="username" placeholder="请输入用户名"/>&nbsp;<span></span><br />
密&nbsp;码：<input type="password" id="password" placeholder="请输入密码"/><br />
确&nbsp;认：<input type="password" id="repassword" placeholder="请确认密码"/>
</div>
</body>
</html>