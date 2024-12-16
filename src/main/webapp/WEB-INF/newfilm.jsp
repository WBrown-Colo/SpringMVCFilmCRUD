<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Add A New Film</h1>

	<!-- ADD ACTION -->
	<fieldset>
		<form action="addfilm.do" method="POST">
			<label for="title"><strong>Title: </strong></label> <input
				type="text" name="title" id="title"><br> <label
				for="description"><strong>Description: </strong></label> <input
				name="description" id="description"><br> <label
				for="length"><strong>Length (in minutes): </strong></label> <input
				type="number" name="length" id="length"><br> <label
				for="rating"><strong>Rating: </strong></label> <select name="rating"
				id="rating">
				<!-- <optgroup label="Choice [g,pg,pg-13,r,nc-17]"> -->
				<option value="G">G</option>
				<option value="PG">PG</option>
				<option value="PG-13">PG-13</option>
				<option value="R">R</option>
				<option value="NC-17">NC-17</option>
				<!-- </optgroup> -->
			</select><br> 
		</form>
		<form action="home.do" method="GET">
			<input type="submit" value="Add Film">
		</form>
	</fieldset>

</body>
</html>