<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>都能访问</title>
</head>
<body>
<shiro:guest>
	<a href="">登录</a>
</shiro:guest>
<shiro:authenticated>
	<shiro:principal/>, 你好！
</shiro:authenticated>
</body>
</html>