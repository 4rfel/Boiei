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


.AA {
	font-size: 2rem
}
margin-left{
	margin-left: 10px;	
}
</style>
<%@page import="java.util.*,br.edu.insper.al.*"%>
<h1>Boiei</h1>
<%
	String userId = (String) request.getAttribute("userId");
	List<Post> posts = (List<Post>) request.getAttribute("posts");
	String orderBy = (String) request.getAttribute("orderBy");
%>
<form action="Order" method="post"; >
	<p class="AA">
		orderBy: <select class="selectpicker" name="orderBy">
	</p>
	<%
		if (orderBy.equals("id")) {
	%>
	<option selected="selected">id</option>
	<option>prioridade</option>

	<%
		} else {
	%><option>id</option>
	<option selected="selected">prioridade</option>
	<%
		}
	%>
	</select> <input type='hidden' name='userId' value=<%=userId%>> <input
		type="submit" name="Order">
</form>
<div class="row margin-left">
	<div class="column column-1">
		<div class="center-text">Materia 1</div>
		<%
			for (Post post : posts) {
				if (post.getMateria().equals("materia1")) {
					int postId = post.getId();
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPost' method='post' id='formId'>");
					out.println("<textarea class='card-text' name='duvida' form='formId'>" + post.getTexto()
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
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			<br>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <br>
			<input type='hidden' name='materia' value="materia1"> <input
				type='hidden' name='userId' value=<%=userId%>> <input
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
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getTexto()
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
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia2"> <input
				type='hidden' name='userId' value=<%=userId%>> <input
				type="submit" name="AddPost">
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
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getTexto()
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
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia3"> <input
				type='hidden' name='userId' value=<%=userId%>> <input
				type="submit" name="AddPost">
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
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getTexto()
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
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>3</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia4"> <input
				type='hidden' name='userId' value=<%=userId%>> <input
				type="submit" name="AddPost">
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
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getTexto()
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
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia5"> <input
				type='hidden' name='userId' value=<%=userId%>> <input
				type="submit" name="AddPost">
		</form>
	</div>
</div>
</body>
</html>