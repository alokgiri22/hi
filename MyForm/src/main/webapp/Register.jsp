
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="box">

<form action="Reg" method="post">
<h2>Register with us!</h2>

	<label>User Name:</label>
	<input type="text" name="username" id="username" required />
	<br>
	<label>User Email:</label>
	<input type="email" name="email" id="email" required />
	<br>
	<label>User Password:</label>
	<input  type="password" name="password" id="password" required/>
	<br>
	<button type="submit" >Register</button>
	
</form>
<p class="bth" ><a href="index.html" >Back to home</a></p>

	<% 
	 String error1 = request.getParameter("error");
	if(error1 != null && error1.equals("1")) { %>
		 <p style="color:Red; "> Registration failed!! Try again later</p> 
	<% } %>


</div>

</body>
</html>
