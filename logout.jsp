<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
	// Destroy Session

	session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>

<style>

body{

	margin:0;
	padding:0;

	font-family:Arial;

	height:100vh;

	display:flex;

	justify-content:center;

	align-items:center;

	background:linear-gradient(to right,#dbeafe,#93c5fd);
}

.box{

	width:450px;

	background:white;

	padding:40px;

	border-radius:20px;

	text-align:center;

	box-shadow:0px 4px 20px rgba(0,0,0,0.2);
}

h1{

	color:#dc2626;

	font-size:40px;
}

p{

	font-size:24px;

	margin-top:20px;
}

a{

	text-decoration:none;

	background:#2563eb;

	color:white;

	padding:15px 30px;

	border-radius:10px;

	font-size:22px;

	display:inline-block;

	margin-top:30px;
}

a:hover{

	background:#1d4ed8;
}

</style>

</head>

<body>

<div class="box">

	<h1>
		Logout Successful
	</h1>

	<p>
		You Have Successfully Logged Out.
	</p>

	<a href="login.jsp">
		Login Again
	</a>

</div>

</body>
</html>