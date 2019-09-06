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
	<form action="Login" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
		<%
		String emptyCamps = (String)request.getAttribute("emptyCampsLogin");
		if(emptyCamps!=null){
			out.println(emptyCamps + "<br>");
		}
		
		String result = (String)request.getAttribute("loged");
		if(result!=null){
			out.println(result + "<br>");
		}
%>
	<input type="submit" name="login">
	</form>
	<br>
	<br>
	<h2>Criar Conta</h2>
	<form action="AddUser" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
		Confirmar Senha: <br> <input type="password" name="passwordCheck"> <br>
		<%
		emptyCamps = (String)request.getAttribute("emptyCamps");
		if(emptyCamps!=null){
			out.println(emptyCamps + "<br>");
		}
		String validUsername = (String)request.getAttribute("isValidUsername");
		if(validUsername!=null){
			out.println(validUsername + "<br>");
		}
		String samePassword = (String)request.getAttribute("samePassword");
		if(samePassword!=null){
			out.println(samePassword + "<br>");
		}
%>
		<br>
	<input type="submit" name="createAccount">
	</form>
</body>
</html>