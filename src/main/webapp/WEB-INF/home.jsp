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
<h1>Welcome to our Film Site</h1>
<<<<<<< HEAD
<form action = "findfilmbyid.do" method="get">
=======
<form action = "idsearch.do">
>>>>>>> f88399eeb333d6aafb697c2c866f7c7f146c65b0
	<fieldset>
		<legend><h3>Find Film by ID</h3></legend>
		<label for="id">Enter ID:</label>
		<input type="number" name="id" id="id">
		<input type="submit" value="Search">
	</fieldset>
</form>
<<<<<<< HEAD
<form action = "findfilmbykeyword.do">
	<fieldset>
		<legend><h3>Find Film by Keyword Search</h3></legend>
		<label for="keyword">Enter Keyword:</label>
		<input type="text" name="keyword" id="keyword" value="">
		<button type="submit">Search</button>
=======
<form action = "keywordsearch.do">
	<fieldset>
		<legend><h3>Find Film by Keyword Search</h3></legend>
		<label for="keyword">Enter Keyword:</label>
		<input name="keyword" id="id" value="">
		<input type="submit" value="Submit">
>>>>>>> f88399eeb333d6aafb697c2c866f7c7f146c65b0
		
	</fieldset>
</form>
<h3><a href = "newfilm.do">Add New Film to the Database</a></h3>
</body>
</html>