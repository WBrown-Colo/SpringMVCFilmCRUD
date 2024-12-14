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
<form action = "idsearch.do">
	<fieldset>
		<legend><h3>Find Film by ID</h3></legend>
		<label for="id">Enter ID:</label>
		<input name="id" id="id" value="">
		<input type="submit" value="Submit">
	</fieldset>
</form>
<form action = "keywordsearch.do">
	<fieldset>
		<legend><h3>Find Film by Keyword Search</h3></legend>
		<label for="keyword">Enter Keyword:</label>
		<input name="keyword" id="id" value="">
		<input type="submit" value="Submit">
		
	</fieldset>
</form>
<h3><a href = "newfilm.do">Add New Film to the Database</a></h3>
</body>
</html>