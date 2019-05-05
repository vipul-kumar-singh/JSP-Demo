<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Expressions</title>
</head>
<body>
	Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %> <br>
	25 multiplied by 4 is : <%= 25*4 %> <br>
	Is 25 greater than 100 ? : <%= 25 > 100 %> <br>
</body>
</html>