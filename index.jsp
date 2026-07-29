<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBazaar Home</title>

<style>

body{
	margin:0;
	padding:0;
	font-family:Arial, sans-serif;
	background:linear-gradient(to right,#dbeafe,#60a5fa);
}

/* Navigation Bar */

.navbar{

	background:#1e3a8a;

	padding:15px 40px;

	display:flex;

	justify-content:space-between;

	align-items:center;
}

.logo{

	color:white;

	font-size:22px;

	font-weight:bold;
}

.menu a{

	color:white;

	text-decoration:none;

	font-size:15px;

	margin-left:30px;

	font-weight:bold;
}

.menu a:hover{

	color:yellow;
}

/* Main Content */

.main{

	text-align:center;

	padding-top:40px;
}

h1{

	font-size:35px;

	color:#0f172a;

	margin-bottom:10px;
}

p{

	font-size:20px;

	color:#374151;

	margin-bottom:40px;
}

/* Product Cards */

.container{

	display:flex;

	justify-content:center;

	gap:40px;

	margin-top:30px;
}

.card{

	background:white;

	width:250px;

	padding:20px;

	border-radius:20px;

	box-shadow:0px 4px 15px rgba(0,0,0,0.2);
}

.card img{

	width:220px;

	height:180px;

	border-radius:15px;
}

.card h2{

	margin-top:15px;

	color:#111827;
}

</style>

</head>

<body>

<!-- Navigation Menu -->

<div class="navbar">

	<div class="logo">
		EBazaar
	</div>

	<div class="menu">

		<a href="index.jsp">Home</a>

		<a href="#">About Us</a>

		<a href="login.jsp">Login</a>

	</div>

</div>

<!-- Main Section -->

<div class="main">

	<h1>Welcome to EBazaar</h1>

	<p>
	Your Online Shopping Destination
	</p>

	<div class="container">

		<div class="card">

			<img src="https://m.media-amazon.com/images/I/61UnzIc+97L._AC_UY327_FMwebp_QL65_.jpg">

			<h2>Mobiles</h2>

		</div>

		<div class="card">

			<img src="https://m.media-amazon.com/images/I/71VneS53BYL._AC_UY327_FMwebp_QL65_.jpg">

			<h2>Laptops</h2>

		</div>

		<div class="card">

			<img src="https://m.media-amazon.com/images/I/610Jl4dUB7L._AC_SX425_.jpg">

			<h2>Watches</h2>

		</div>

	</div>

</div>

</body>
</html>