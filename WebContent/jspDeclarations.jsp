<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Scriplets</title>
</head>
<body>
	<%!
		String makeItLower(String text){
		return text.toLowerCase();
	}
	%>
	
	<p>
	Lower case of "Hello World" is <%= makeItLower("\"Hello World\"") %>
	</p>
</body>
</html>