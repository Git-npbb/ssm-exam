<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>欢迎注册</h1>
	
	<form action="register.do">
		<input name = "eno" placeholder="请输入账号"><br>
		<input name = "epassword" type ="password" placeholder="请输入密码"><br>
		<input name = "eage" placeholder="请输入年龄"><br>
		<input name = "email" placeholder="请输入邮箱"><br>
		<input name = "esalary"placeholder="请输入薪水"><br>
		<input type ="submit" value ="点击注册">	
	</form>${msg }
	
	
	
</body>
</html>