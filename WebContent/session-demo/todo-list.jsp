<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo List</title>
</head>
<body>
	<!-- Step 1 : Create HTML Form -->
	<form action="todo-list.jsp">
		Add New Item : <input type="text" name="theItem">
		<button type="submit">Add</button>
	</form>

	<!-- Step 2 : Add new item to "To-Do" List -->
	<%
		// get the TO DO items from the session
		List<String> itemList = (List<String>) session.getAttribute("myToDoList");

		//if the TO DO items doesn't exist, then create a new one
		if (itemList == null) {
			itemList = new ArrayList<String>();
			session.setAttribute("myToDoList", itemList);
		}

		//see if there is form data to add
		String item = request.getParameter("theItem");
		if (item != null && !item.isEmpty())
			itemList.add(item);
	%>


	<!-- Step 3 : Display all "To-Do" items from the session -->
	<hr>
	<b>TO DO List : </b>
	<br />

	<ol>
		<%
			for (String tempItem : itemList)
				out.println("<li>" + tempItem + "</li>");
		%>
	</ol>


</body>
</html>