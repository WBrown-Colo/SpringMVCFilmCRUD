<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film</title>
</head>
<body>
<jsp:include page="homebutton.jsp" />
	<h1>Edit Film Details</h1>
	<c:if test="${error != null}">
		<p style="color: green;">${error}</p>
	</c:if>

	<form action="editFilm.do" method="POST">
		<input type="hidden" name="id" value="${film.id}" />
		<p>
			Title: <input type="text" name="title" value="${film.title}" />
		</p>
		<p>
			Description:
			<textarea name="description">${film.description}</textarea>
		</p>
		<p>
			Length: <input type="number" name="length" value="${film.length}" />
		</p>
		<p>
			Rating: <input type="text" name="rating" value="${film.rating}" />
		</p>
		<button type="submit">Save Changes</button>
		</form>
</body>
</html>