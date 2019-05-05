<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation</title>
</head>

<body>
<h3>Student Details</h3>
<p><b>The Student is confirmed :</b></p> 
Name : ${param.firstName} ${param.lastName}
<br>
Country : ${param.country}
<br>
Gender : ${param.gender}
<br>
Favorite Languages :
<ul> 
<% 
	String[] favLangArray = request.getParameterValues("favLang");
	for(String lang : favLangArray)
		out.println("<li>" + lang + "</li>"); 
%>
</ul>

</body>
</html>