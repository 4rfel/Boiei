<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CRUD Login</title>
</head>
<body>
	<br>
	<h2>Login</h2>
	<form action="/Login" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
	<input type="submit" name="login">
	</form>
	<br>
	<br>
	<h2>Criar Conta</h2>
	<form action="AddUser" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
		Confirmar Senha: <br> <input type="password" name="passwordCheck">
		<br>
	
	<input type="submit" name="createAccount">
	
	</form>
	<% 
%>
	
</body>
</html>