<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mobiles</title>

<style>

body{
	margin:0;
	padding:0;
	font-family:Arial;
	background:#f1f5f9;
}

.navbar{

	background:#0f172a;

	padding:15px;

	display:flex;

	justify-content:space-between;

	align-items:center;
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

h1{
	text-align:center;
	margin-top:30px;
}

.container{

	display:flex;

	justify-content:center;

	gap:30px;

	margin-top:40px;
}

.card{

	background:white;

	width:250px;

	padding:20px;

	border-radius:15px;

	text-align:center;

	box-shadow:0px 2px 10px rgba(0,0,0,0.2);
}

.card img{

	width:200px;
	height:200px;
}

.card p{
	font-size:20px;
	font-weight:bold;
}
button{

	width:180px;

	height:45px;

	background:#facc15;

	border:none;

	border-radius:25px;

	font-size:20px;

	cursor:pointer;

	font-weight:bold;
}

button:hover{

	background:#eab308;
}

.footer{

	background:#0f172a;

	color:white;

	text-align:center;

	padding:15px;

	margin-top:50px;
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
<%
	Object name=session.getAttribute("login");
	out.println(" Hi " + " Achal!! ");
%>

<h1>Mobiles</h1>

<div class="container">

	<div class="card">

		<img src="https://m.media-amazon.com/images/I/51MCIUhxvZL._AC_UY327_FMwebp_QL65_.jpg">

		<p>
			iPhone 15 <br>
			₹80000 <br>
			Launch : 2024
		</p>
		<form action="cartservlet" method= "post">
		<input type= "hidden" name= "product" value= "iphone 15">
		<button type= "submit">Add To Cart</button>
		</form>

	</div>

	<div class="card">

		<img src="https://m.media-amazon.com/images/I/51ATUzW-V4L._AC_UY327_FMwebp_QL65_.jpg">

		<p>
			Samsung S24 <br>
			₹75000 <br>
			Launch : 2024 
		</p>
		<form action="cartservlet" method="post">

			<input type="hidden" name="product" value="Samsung S24">

			<button type="submit">Add To Cart</button>

		</form>

	</div>

	<div class="card">

		<img src="https://m.media-amazon.com/images/I/61Dsln0iM0L._AC_UY327_FMwebp_QL65_.jpg">

		<p>
			OnePlus 12 <br>
			₹60000 <br>
			Launch : 2024
		</p>
		
		<form action="cartservlet" method="post">
		<input type="hidden" name="product" value="OnePlus12">
		<button type="submit">Add To Cart</button>
		</form>

	</div>

</div>

<div class="footer">
	© 2026 EBazaar. All Rights Reserved.
</div>

</body>
</html>