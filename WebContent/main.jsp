<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="master.css">
<meta charset="utf-8">
<title>MAIN</title>
</head>
<body class="white-smoke">
	<%@page import="java.util.*,br.edu.insper.al.*"%>
	<h1>Boiei</h1>
	<div class="row">
		<div class="column column-1">
			<div class="materia-text">Materia 1</div>
			<%
				List<Post> posts = (List<Post>) request.getAttribute("posts");
				for (Post post : posts) {
					if (post.getMateria() == "Materia 1") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
			<form action="Login" method="post">
				duvida: <br> <input type="text" name="text"> <br>
				prioridade: <br> <input type="number" name="prioridade"> <br>
				<%
				for (Post post : posts) {
					if (post.getMateria() == "Materia 1") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
				<input type="submit" name="AddPost">
			</form>

		</div>
		<div class="column column-2">
			<div class="materia-text">Materia 2</div>
			<%
				for (Post post : posts) {
					if (post.getMateria() == "Materia 2") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
		</div>
		<div class="column column-3">
			<div class="materia-text">Materia 3</div>
			<%
				for (Post post : posts) {
					if (post.getMateria() == "Materia 3") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
		</div>
		<div class="column column-4">
			<div class="materia-text">Materia 4</div>
			<%
				for (Post post : posts) {
					if (post.getMateria() == "Materia 4") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
		</div>
		<div class="column column-5">
			<div class="materia-text">Materia 5</div>
			<%
				for (Post post : posts) {
					if (post.getMateria() == "Materia 5") {
						out.println("<div>" + post.getTexto() + "</div>");
					}
				}
			%>
		</div>
	</div>

</body>
</html>