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
<h1>New Film Confirmation</h1>
<%-- <p>${message }</p>
<p>${film }</p> --%>
<c:choose>
<c:when test="${not empty film }">

	<p>You added a film to the database!</p>
	<strong>ID:</strong> ${film.id}<br>
	<strong>Title: </strong>${film.title } | <strong>Description: </strong>${film.description }<br>
	<strong>Length: </strong>${film.length } minutes | <strong>Rating: </strong>(${film.rating })
</c:when>
<c:otherwise>
<p>FILM FAILED TO ADD</p>
</c:otherwise>
</c:choose>
	</body>
<!--TODO: FILM DOESNT SAVE TO DATABASE  -->

</html>