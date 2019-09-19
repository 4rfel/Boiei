<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="master.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="utf-8">

<title>MAIN</title>
</head>
<style>
h1 {
	color: #0080ff;
	margin-left: 30px;
	font-size: 6rem;
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
<%
	List<Post> posts = (List<Post>) session.getAttribute("posts");
	String orderBy = (String) session.getAttribute("orderBy");
%>

<form action="sairController" method="post" class="margin">
	<input type="submit" value="Sair">
</form>


<form action="OrderController" method="post" >
	<p class="AA">
		Ordenar: <select class="selectpicker" name="orderBy">
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
	</select> <input type="submit" value="Order">
</form>

<div class="row margin-left">
	<div class="column column-1">
		<div class="center-text">Materia 1</div>
		<%
			for (Post post : posts) {
				if (post.getMateria().equals("materia1")) {
					int postId = post.getPostId();
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPostController' method='post' id='formId'>");
					out.println("<textarea class='card-text' name='duvida' form='formId'>" + post.getDuvida()
							+ "</textarea>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='EditPost' value='Editar'>");
					out.println("</form>");

					out.println("<form action='DelPostController' method='post'>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='DelPost' value='Apagar'>");
					out.println("</form>");

					out.println("</div><br>");
				}
			}
		%>
		<form action="addPostController" method="post" class="center-text">
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia1"> <input
				type="submit" value="AddPost">
		</form>

	</div>
	<div class="column column-2">
		<div class="center-text">Materia 2</div>
		<%
			for (Post post : posts) {
				int postId = post.getPostId();
				if (post.getMateria().equals("materia2")) {
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPostController' method='post' id='formId'>");
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getDuvida()
							+ "</textarea>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='EditPost' value='Editar'>");
					out.println("</form>");

					out.println("<form action='DelPostController' method='post'>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='DelPost' value='Apagar'>");
					out.println("</form>");

					out.println("</div><br>");
				}
			}
		%>
		<form action="addPostController" method="post" class="center-text">
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia2"> <input
				type="submit" value="AddPost">
		</form>
	</div>
	<div class="column column-3">
		<div class="center-text">Materia 3</div>
		<%
			for (Post post : posts) {
				int postId = post.getPostId();
				if (post.getMateria().equals("materia3")) {
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPostController' method='post' id='formId'>");
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getDuvida()
							+ "</textarea>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='EditPost' value='Editar'>");
					out.println("</form>");

					out.println("<form action='DelPostController' method='post'>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='DelPost' value='Apagar'>");
					out.println("</form>");

					out.println("</div><br>");
				}
			}
		%>
		<form action="addPostController" method="post" class="center-text">
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia3"> <input
				type="submit" value="AddPost">
		</form>
	</div>
	<div class="column column-4">
		<div class="center-text">Materia 4</div>
		<%
			for (Post post : posts) {
				int postId = post.getPostId();
				if (post.getMateria().equals("materia4")) {
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPostController' method='post' id='formId'>");
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getDuvida()
							+ "</textarea>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='EditPost' value='Editar'>");
					out.println("</form>");

					out.println("<form action='DelPostController' method='post'>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='DelPost' value='Apagar'>");
					out.println("</form>");

					out.println("</div><br>");
				}
			}
		%>
		<form action="addPostController" method="post" class="center-text">
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia4"><input
				type="submit" value="AddPost">
		</form>
	</div>
	<div class="column column-5">
		<div class="center-text">Materia 5</div>
		<%
			for (Post post : posts) {
				int postId = post.getPostId();
				if (post.getMateria().equals("materia5")) {
					out.println("<div class='card-body center-text'>");

					out.println("<form action='EditPostController' method='post' id='formId'>");
					out.println("<textarea  class='card-text' name='duvida' form='formId'>" + post.getDuvida()
							+ "</textarea>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='EditPost' value='Editar'>");
					out.println("</form>");

					out.println("<form action='DelPostController' method='post'>");
					out.println("<input type='hidden' name='postId' value=" + postId + ">");
					out.println("<input type='submit' value='DelPost' value='Apagar'>");
					out.println("</form>");

					out.println("</div><br>");
				}
			}
		%>
		<form action="addPostController" method="post" class="center-text">
			<div class="center-text">duvida:</div>
			<textarea rows="4" maxlength="255" name="duvida"> </textarea>
			prioridade: <select class="selectpicker" name="prioridade">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <input type='hidden' name='materia' value="materia5"><input
				type="submit" value="AddPost">
		</form>
	</div>
</div>
</body>
</html>