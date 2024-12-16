<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Film</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Enter Film ID To Delete From Database</h1>
	<p>Currently Selected Film ID. Click "Delete Film" to confirm deletion.</p>

	<form action="deleteFilm.do" method="post">
	
		<label for="id">Film ID: </label> 
		<input type="number" name="id" id="id" value="${film.id}" readonly />
		<button type="submit">Delete Film</button>
	</form>
</body>

</html>