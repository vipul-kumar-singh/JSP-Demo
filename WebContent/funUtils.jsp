<%@page import="com.jspdemo.FunUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calling a Java Class from JSP</title>
</head>
<body>
	Let's have some fun: <%= FunUtils.makeItLower("This is fun") %>
</body>
</html>