<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<%
	//read form data
	String favLang = request.getParameter("favLang");

	//create the cookie
	Cookie cookie = new Cookie("myApp.favoriteLanguage", favLang);

	//set the life span ... total no. of seconds
	cookie.setMaxAge(60 * 60 * 24 * 365); //1 year

	//send cookie to browser
	response.addCookie(cookie);
%>
<body>
	Thanks! We set your favorite language to: ${param.favLang}
	<br>
	<br>
	<a href="cookies-homepage.jsp">Return to homepage..</a>
</body>
</html>