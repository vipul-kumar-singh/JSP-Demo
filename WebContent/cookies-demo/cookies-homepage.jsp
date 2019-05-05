<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Portal</title>
</head>
<body>
<h3>Training Portal</h3>
<!-- read the favorite programming language cookie -->
<%
	//the default ... if there are no cookies;
	String favLang = "Java";
	
	//get the cookies from the browser request
	Cookie[] cookies = request.getCookies();
	
	//find our favorite language cookie
	if(cookies != null){
		for(Cookie tempCookie : cookies){
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- Now show a personalized page ... use the favLang variable -->
<h4>New Books for <%= favLang %></h4>
<ul>
<li>blah blah blah</li>
<li>blah blah blah</li>
</ul>
<br><br>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>