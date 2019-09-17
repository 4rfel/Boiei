<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="master.css">

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

margin-left {
	margin-left: 10px;
}
</style>
<%@page import="java.util.*,mvc.model.*"%>

<h1>Boiei</h1>

<body>
	<br>
	<div class="side-side">
		<div class="column column-Login" style="max-width: 500px">
			<h2>Login</h2>
			<form action="loginController" method="post">
				<input type="text" name="username" placeholder="username"> <br>
				<input type="password" name="password" placeholder="password">
				<br>
				<%
					String emptyCamps = (String) session.getAttribute("emptyCampsLogin");
					if (emptyCamps != null) {
						out.println(emptyCamps + "<br>");
					}

					String result = (String) session.getAttribute("loged");
					if (result != null) {
						out.println(result + "<br>");
					}
				%>
				<input type="submit" name="login" value="Entrar">
			</form>
		</div>
		<br> <br>

		<div class="column column-SignUp" style="max-width: 500px">
			<h2>Criar Conta</h2>
			<form action="addUserController" method="post">
				<input type="text" name="username" placeholder="username"> <br>
				<input type="password" name="password" placeholder="password">
				<br> <input type="password" name="passwordCheck" placeholder="confirm password"> <br>
				<%
					emptyCamps = (String) session.getAttribute("emptyCamps");
					if (emptyCamps != null) {
						out.println(emptyCamps + "<br>");
					}
					String validUsername = (String) session.getAttribute("ValidUsername");
					if (validUsername != null) {
						out.println(validUsername + "<br>");
					}
					String samePassword = (String) session.getAttribute("samePassword");
					if (samePassword != null) {
						out.println(samePassword + "<br>");
					}
				%>
				<input type="submit" name="createAccount" value="Cadastrar-se">
			</form>
		</div>
	</div>
</body>
</html>