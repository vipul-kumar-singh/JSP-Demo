<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Scriplets</title>
</head>
<body>
	<%
		for (int i = 0; i < 5; i++)
			out.println("<br/> I really luv2code: " + (i + 1));
	%>
</body>
</html>