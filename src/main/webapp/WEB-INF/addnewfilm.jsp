<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
<jsp:include page="homebutton.jsp"/>
<h1>New Film Confirmation</h1>
<p>You added a film to the database!</p>
<strong>Title: </strong>${title } | <strong>Description: </strong>${description }<br>
<strong>Length: </strong>${length } minutes | <strong>Rating: </strong>(${rating })
</body>

<!--TODO: FILM DOESNT SAVE TO DATABASE  -->

</html>