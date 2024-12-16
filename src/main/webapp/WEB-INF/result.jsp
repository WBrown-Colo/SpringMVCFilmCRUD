<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Film ID Result</h1>

	<!-- Message -->

	<p>${message}</p>

	<!-- Film Details. With Conditional Tag -->
	<c:choose>
		<c:when test="${not empty film}">
			<h2>Film Details:</h2>
			<ul>
				<li><strong>ID:</strong> ${film.id}</li>
				<li><strong>Title:</strong> ${film.title}</li>
				<li><strong>Description:</strong> ${film.description}</li>
				<li><strong>Length:</strong> ${film.length}</li>
				<li><strong>Rating:</strong> ${film.rating}</li>
				<li><strong>Actors:</strong> ${film.actors}</li>
			</ul>

			<!--DELETE FORM -->
			<form action="deleteFilm.do" method="post">
				<input type="hidden" name="id" value="${film.id}" /> <input
					type="submit" value="Delete">
			</form>

			<!-- EDIT FORM -->
			<form action="editFilm.do" method="post">
				<input type="hidden" name="id" value="${film.id}" /> <input
					type="submit" value="Edit">
			</form>

		</c:when>
		<c:otherwise>
			<p>No Film found with selected ID.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>