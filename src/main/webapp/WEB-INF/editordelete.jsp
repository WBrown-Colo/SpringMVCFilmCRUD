<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Display success message if film is deleted -->
	<c:if test="${deleteMessage != null}">
		<p>style="color: green;"${deleteMessage}</p>
	</c:if>

	<!-- Form for editing film -->

	<c:if test="${film != null}">
		<h1>Edit Film</h1>
		<form action="editFilm" method="post">
			<input type="hidden" name="id" value="${film.id}" />
			<p>
				<label for="title">Title:</label> 
				<input type="text" id="title" name="title" value="${film.title}" />
			</p>
			<p>
				<label for="description">Description:</label> 
				<textarea id="description" name="description">${film.title}"</textarea>
			</p>
		  	<p>
				<label for="length">Length (minutes):</label> 
				<input type="number" id="length" name="length" value="${film.length}" />
			</p>
			<p>
				<label for="rating">Rating:</label> 
				<input type="text" id="rating" name="rating" value="${film.rating}" />
			</p>
			<button type="submit">Save Changes</button>
			</form>
		</c:if>

			<!--EXPERIMENTING-----------------------------------  -->
</body>
</html>