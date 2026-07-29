<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>

body{
	margin:0;
	padding:0;
	font-family:Arial;
	height:100vh;

	display:flex;
	justify-content:center;
	align-items:center;

	background:linear-gradient(to right,#dbeafe,#60a5fa);
}

.login-box{

	width:420px;

	background:white;

	padding:40px;

	border-radius:20px;

	box-shadow:0px 4px 20px rgba(0,0,0,0.2);
}

h1{
	text-align:center;
	color:#0f172a;
	margin-bottom:30px;
}

input{

	width:100%;
	height:45px;

	margin-top:10px;
	margin-bottom:20px;

	padding-left:10px;

	border-radius:10px;

	border:1px solid gray;

	font-size:15px;
}

button{

	width:100%;
	height:40px;

	background:#2563eb;

	color:white;

	border:none;

	border-radius:10px;

	font-size:20px;

	cursor:pointer;
}

button:hover{
	background:#1d4ed8;
}

</style>

</head>

<body>

<div class="login-box">

	<h1>Welcome to EBazaar</h1>

	<form action="login" method="post">

		<label>Username</label>

		<input type="text"
		name="username"
		placeholder="Enter Username">

		<label>Password</label>

		<input type="password"
		name="password"
		placeholder="Enter Password">

		<button type="submit">
			LOGIN
		</button>

	</form>

</div>

</body>
</html>