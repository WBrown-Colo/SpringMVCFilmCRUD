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
		  <ul>
			<li>${film.title }</li>
			<li>${film.description }</li>
			<li>${film.length }</li>
			<li>${film.rating }</li>
		  </ul>
		</c:when>
		<c:otherwise>
		  <p>No film found</p>
		</c:otherwise>
 </c:choose> 
</body>
</html>