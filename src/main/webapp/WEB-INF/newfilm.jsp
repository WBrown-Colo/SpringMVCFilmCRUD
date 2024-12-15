<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
<h1>Add A New Film</h1>

<!-- ADD ACTION -->
<fieldset><form action="addnewfilm.do" method="get">
<label for="title"><strong>Title: </strong></label>
<input name="title" id="title"><br>
<label for="description"><strong>Description: </strong></label>
<input name="description" id="description"><br>
<label for="length"><strong>Length (in minutes): </strong></label>
<input name="length" id="length"><br>
<label for="rating"><strong>Rating: </strong></label>
<select name="rating" id="rating">
<!-- <optgroup label="Choice [g,pg,pg-13,r,nc-17]"> -->
<option value="g">G</option>
<option value="pg">PG</option>
<option value="pg-13">PG-13</option>
<option value="r">R</option>
<option value="nc-17">NC-17</option>
<!-- </optgroup> -->
</select><br>
<input type="submit" value="Submit">
</form>
</fieldset>

</body>
</html>