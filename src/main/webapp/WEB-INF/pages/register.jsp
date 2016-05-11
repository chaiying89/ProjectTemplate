<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
	你好，<shiro:principal/>! <a href="<%=request.getContextPath()%>/logout">退出</a>
	<form action="<%=request.getContextPath()%>/register" method="post">
	<input type="text" name="username">
	<input type="password" name="password">
	<input type="password" name="repassword">
	<input type="submit" value="register">
</form>
</body>
</html>