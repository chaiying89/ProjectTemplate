<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<style type="text/css">#error{color:red;}</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/login" method="post">
	<input type="text" name="username">
	<input type="password" name="password">
	<input type="submit" value="login">
	<a href="<%=request.getContextPath()%>/userRegister">register</a>
	<span id="error">${error}</span>
</form>
</body>
</html>