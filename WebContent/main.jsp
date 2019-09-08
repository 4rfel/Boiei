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
<body class="white-smoke">
	<%@page import="java.util.*,br.edu.insper.al.*"%>
	<h1>Boiei</h1>
	<div class="row">
		<div class="column column-1">
			<div class="center-text">Materia 1</div>
			<%
				String userId = (String) request.getAttribute("userId");
				List<Post> posts = (List<Post>) request.getAttribute("posts");
				for (Post post : posts) {
					int postId = post.getId();
					if (post.getMateria().equals("materia1")) {
						out.println("<div class='card-body center-text'>");

						out.println("<form action='EditPost' method='post' id='formId'>");
						out.println("<textarea rows='4' class='card-text' name='duvida' form='formId'>" + post.getTexto()
								+ "</textarea>");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='submit' name='EditPost' value='Editar'>");
						out.println("</form>");

						out.println("<form action='DelPost' method='post'>");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='submit' name='DelPost' value='Apagar'>");
						out.println("</form>");

						out.println("</div><br>");
					}
				}
			%>
			<form action="AddPost" method="post" class="center-text">
				duvida:
				<textarea rows="4" maxlength="255" name="duvida"> </textarea>
				prioridade: <select class="selectpicker" name="prioridade">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>3</option>
					<option>5</option>
				</select> <br> <input type='hidden' name='materia' value="materia1">
				<input type='hidden' name='userId' value=<%=userId%>> <input
					type="submit" name="AddPost">
			</form>

		</div>
		<div class="column column-2">
			<div class="center-text">Materia 2</div>
			<%
				for (Post post : posts) {
					int postId = post.getId();
					if (post.getMateria().equals("materia2")) {
						out.println("<div class='card-body center-text'>");

						out.println("<form action='EditPost' method='post' id='formId'>");
						out.println("<textarea rows='4' class='card-text' name='duvida' form='formId'>" + post.getTexto()
								+ "</textarea>");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='submit' name='EditPost' value='Editar'>");
						out.println("</form>");

						out.println("<form action='DelPost' method='post'>");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='submit' name='DelPost' value='Apagar'>");
						out.println("</form>");

						out.println("</div><br>");
					}
				}
			%>
			<form action="AddPost" method="post" class="center-text">
				duvida:
				<textarea rows="4" maxlength="255" name="duvida"> </textarea>
				prioridade: <select class="selectpicker" name="prioridade">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>3</option>
					<option>5</option>
					<br>
					<input type='hidden' name='materia' value="materia2">
					<input type='hidden' name='userId' value=<%=userId%>>
					<input type="submit" name="AddPost">
			</form>
		</div>
		<div class="column column-3">
			<div class="center-text">Materia 3</div>
			<%
				for (Post post : posts) {
					int postId = post.getId();
					if (post.getMateria().equals("materia3")) {
						out.println("<div class='card-body center-text'>");

						out.println("<form action='EditPost' method='post' id='formId'>");
						out.println("<textarea rows='4' class='card-text' name='duvida' form='formId'>" + post.getTexto()
								+ "</textarea>");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='submit' name='EditPost' value='Editar'>");
						out.println("</form>");

						out.println("<form action='DelPost' method='post'>");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='submit' name='DelPost' value='Apagar'>");
						out.println("</form>");

						out.println("</div><br>");
					}
				}
			%>
			<form action="AddPost" method="post" class="center-text">
				duvida:
				<textarea rows="4" maxlength="255" name="duvida"> </textarea>
				prioridade: <select class="selectpicker" name="prioridade">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>3</option>
					<option>5</option>
					<br>
					<input type='hidden' name='materia' value="materia3">
					<input type='hidden' name='userId' value=<%=userId%>>
					<input type="submit" name="AddPost">
			</form>
		</div>
		<div class="column column-4">
			<div class="center-text">Materia 4</div>
			<%
				for (Post post : posts) {
					int postId = post.getId();
					if (post.getMateria().equals("materia4")) {
						out.println("<div class='card-body center-text'>");

						out.println("<form action='EditPost' method='post' id='formId'>");
						out.println("<textarea rows='4' class='card-text' name='duvida' form='formId'>" + post.getTexto()
								+ "</textarea>");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='submit' name='EditPost' value='Editar'>");
						out.println("</form>");

						out.println("<form action='DelPost' method='post'>");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='submit' name='DelPost' value='Apagar'>");
						out.println("</form>");

						out.println("</div><br>");
					}
				}
			%>
			<form action="AddPost" method="post" class="center-text">
				duvida:
				<textarea rows="4" maxlength="255" name="duvida"> </textarea>
				prioridade: <select class="selectpicker" name="prioridade">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>3</option>
					<option>5</option>
					<br>
					<input type='hidden' name='materia' value="materia4">
					<input type='hidden' name='userId' value=<%=userId%>>
					<input type="submit" name="AddPost">
			</form>
		</div>
		<div class="column column-5">
			<div class="center-text">Materia 5</div>
			<%
				for (Post post : posts) {
					int postId = post.getId();
					if (post.getMateria().equals("materia5")) {
						out.println("<div class='card-body center-text'>");

						out.println("<form action='EditPost' method='post' id='formId'>");
						out.println("<textarea rows='4' class='card-text' name='duvida' form='formId'>" + post.getTexto()
								+ "</textarea>");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='submit' name='EditPost' value='Editar'>");
						out.println("</form>");

						out.println("<form action='DelPost' method='post'>");
						out.println("<input type='hidden' name='postId' value=" + postId + ">");
						out.println("<input type='hidden' name='userId' value=" + userId + ">");
						out.println("<input type='submit' name='DelPost' value='Apagar'>");
						out.println("</form>");

						out.println("</div><br>");
					}
				}
			%>
			<form action="AddPost" method="post" class="center-text">
				duvida:
				<textarea rows="4" maxlength="255" name="duvida"> </textarea>
				prioridade: <select class="selectpicker" name="prioridade">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>3</option>
					<option>5</option>
					<br>
					<input type='hidden' name='materia' value="materia5">
					<input type='hidden' name='userId' value=<%=userId%>>
					<input type="submit" name="AddPost">
			</form>
		</div>
	</div>

</body>
</html>