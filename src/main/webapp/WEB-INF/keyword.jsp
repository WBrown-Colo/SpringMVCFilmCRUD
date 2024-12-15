<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC Film Site</title>
</head>
<body>
	<h1>Search Result</h1>
	<c:choose>
		<c:when test="${! empty film }">
			<c:forEach var="films" items="${film }">
				<p>
					<strong>Title: </strong>${films.title } | <strong>Description:
					</strong>${films.description }<br> <strong>Length: </strong>${films.length }
					minutes | <strong>Rating: </strong>(${films.rating })
				</p>
				<br>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<p>Sorry, no films found.</p>
		</c:otherwise>
	</c:choose>

	<!--THINKING WE GET RID OF LINES 29-43, FEEL FREE TO EDIT ANYTHING  -->

	<!-- <h1>Please enter the keyword of film you would like.</h1>
	<div>
		<h3>Search for film by Keyword:</h3>
		<form action="keywordsearch.do" method="GET">
			<label for="keyword">keyword</label> <input type="text"
				name="keyword"> 
				<input type="submit" value="Submit">
		</form>
	</div>
	<p>
		//TODO: Return to Home Screen
	</p>
 -->
</body>

</html>