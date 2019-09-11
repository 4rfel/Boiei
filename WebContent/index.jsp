<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="master.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">

<title>MAIN</title>
</head>
<style>
h1 {
	color: #0080ff;
	margin-left: 30px;
	font-size: 6rem;
}
h2 {
	text-align: center;

}
.button {
	margin-left: 10px;	
	

}
.AA {
	font-size: 2rem;
	margin-left: 10px;
}
margin-left{
	margin-left: 10px;	
}
</style>
<%@page import="java.util.*,br.edu.insper.al.*"%>

<h1>Boiei</h1>

<body>
	<br>
	<div class="side-side">
	<div class="column column-Login" style = max-width:500px>
	<h2>Login</h2>
	<form action="Login" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
		<%
			String emptyCamps = (String) request.getAttribute("emptyCampsLogin");
			if (emptyCamps != null) {
				out.println(emptyCamps + "<br>");
			}

			String result = (String) request.getAttribute("loged");
			if (result != null) {
				out.println(result + "<br>");
			}
		%>
		<input type="submit" name="login"  value="Entrar">
	</form>
</div>


	<br>
	<br>

	<div class="column column-SignUp" style=max-width:500px >
	<h2>Criar Conta</h2>
	<form action="AddUser" method="post">
		Username: <br> <input type="text" name="username"> <br>
		Senha: <br> <input type="password" name="password"> <br>
		Confirmar Senha: <br> <input type="password" name="passwordCheck">
		<br>
		<%
			emptyCamps = (String) request.getAttribute("emptyCamps");
			if (emptyCamps != null) {
				out.println(emptyCamps + "<br>");
			}
			String validUsername = (String) request.getAttribute("isValidUsername");
			if (validUsername != null) {
				out.println(validUsername + "<br>");
			}
			String samePassword = (String) request.getAttribute("samePassword");
			if (samePassword != null) {
				out.println(samePassword + "<br>");
			}
		%>
		<br> <input type="submit" name="createAccount" value="Cadastrar-se">
	</form>
	</div>
	</div>
</body>
</html>