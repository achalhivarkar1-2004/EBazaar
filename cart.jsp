<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Cart</title>

<style>

body{
	font-family:Arial;
	background:#f1f5f9;
}

.container{
	width:70%;
	margin:auto;
	margin-top:40px;
}

.card{

	background:white;

	padding:20px;

	margin-bottom:20px;

	border-radius:15px;

	box-shadow:0px 2px 10px rgba(0,0,0,0.2);
}

button{

	width:220px;

	height:50px;

	background:#facc15;

	border:none;

	border-radius:30px;

	font-size:22px;

	cursor:pointer;
}

</style>

</head>

<body>

<h1 align="center">
	My Cart
</h1>

<%
	Object name=session.getAttribute("login");
	out.println(" Hi " + " Achal!! ");
%>


<div class="container">

<%

ArrayList<String> cart =
(ArrayList<String>)
session.getAttribute("cart");

if(cart != null){

	for(String item : cart){

%>

<div class="card">

	<h2><%= item %></h2>

	<p>
		Product Added Successfully
	</p>

</div>

<%
	}
}
else{
%>

<h2 align="center">
	Cart Empty
</h2>

<%
}
%>

<center>

	<form action="purchase.jsp">

	<button type="submit">Purchase</button>

	</form>

</center>

</div>

</body>
</html>