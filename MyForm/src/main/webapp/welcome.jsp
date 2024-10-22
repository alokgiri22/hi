<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box">

<% 
//Catching session object!
 	HttpSession session1 = request.getSession(false);

// Checking condition and declaring username from getAttribute method.
	if(session != null && session1.getAttribute("username") != null){
		
		String username = (String) session1.getAttribute("username");
%>

	<h1>Welcome <%= username %>&#128128; </h1>
	<a href="logout.jsp" >Log out</a>
	
<% } %>
</div>
</body>
</html>