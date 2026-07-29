<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
	// Remove Cart After Purchase

	session.removeAttribute("cart");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Success</title>

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
.navbar{

	background:#0f172a;

	padding:15px;

	display:flex;

	justify-content:space-between;

	align-items:center;

	position:absolute;

	top:0;

	width:100%;

	box-sizing:border-box;
}

.logo{

	color:white;

	font-size:30px;

	font-weight:bold;
}

.menu a{

	color:white;

	text-decoration:none;

	margin-left:25px;

	font-size:18px;
}

.box{

	width:500px;

	background:white;

	padding:40px;

	border-radius:20px;

	text-align:center;

	box-shadow:0px 4px 20px rgba(0,0,0,0.2);
}

h1{

	color:green;

	font-size:38px;
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

<div class="navbar">

	<div class="logo">
		EBazaar
	</div>

	<div class="menu">

		<a href="mobiles.jsp">Mobiles</a>

		<a href="laptops.jsp">Laptops</a>

		<a href="watches.jsp">Watches</a>

		<a href="logout.jsp">Logout</a>

	</div>

</div>
	
<div class="box">

	<h1>
		✓ Purchase Successful
	</h1>

	<p>
		Your Purchase Has Been Successfully Completed.
	</p>

	<a href="mobiles.jsp">
		Continue Shopping
	</a>

</div>

</body>
</html>