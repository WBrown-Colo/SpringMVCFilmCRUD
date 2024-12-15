<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
=======
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
    
>>>>>>> f88399eeb333d6aafb697c2c866f7c7f146c65b0
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
<<<<<<< HEAD
	<h1>Result</h1>

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
			</ul>
		</c:when>
		<c:otherwise>
		<p>No Film found with selected ID.</p>
		</c:otherwise>
	</c:choose>
=======
<h1>Search Result</h1> 
		<c:choose>
		<c:when test="${! empty film && film.id > 1000 }">
		  <strong>Film ID: </strong>${film.id }<br>
			<strong>Title: </strong>${film.title } | <strong>Description: </strong>${film.description }<br>
			<strong>Length: </strong>${film.length } minutes | <strong>Rating: </strong>${film.rating }<br>
			
<!--FILL IN ACTION ATTRIBUTE, IF PERSON WANTS TO DELETE, WHERE DOES THE SUBMIT BUTTON TAKE THEM?  -->		
			<form action="">
				Delete this film?<input type="checkbox" id="delete" name="delete"><br>
				<input type="submit" value="Submit">
			</form>
		</c:when>
			
		<c:otherwise> 
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
		</c:otherwise>
 </c:choose> 
>>>>>>> f88399eeb333d6aafb697c2c866f7c7f146c65b0
</body>
</html>