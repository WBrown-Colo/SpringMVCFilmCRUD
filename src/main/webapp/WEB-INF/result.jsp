<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
<h1>Search Result</h1> 
		<c:choose>
		<c:when test="${! empty film }">
		  <strong>Film ID: </strong>${film.id }<br>
			<strong>Title: </strong>${film.title } | <strong>Description: </strong>${film.description }<br>
			<strong>Length: </strong>${film.length } minutes | <strong>Rating: </strong>${film.rating }
		</c:when>
		<c:otherwise>
		  <p>No film found</p>
		</c:otherwise>
 </c:choose> 
</body>
</html>