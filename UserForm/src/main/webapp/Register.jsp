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

<form action="" method="post">
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
	<button type="submit" >Login</button>

</form>
<p class="bth" ><a href="index.html" >Back to home</a></p>
</div>

</body>
</html>