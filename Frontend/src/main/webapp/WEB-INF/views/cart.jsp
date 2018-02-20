<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Cart</title>
<style type="text/css">
.cont {
	margin-top: 100px;
	color: white;
}
input{
color: black !important;
}
body{
	background: url(resources/images/bg/b1.jpg) !important ;
	padding: 0px;
}
#product{
background: threedlightshadow;
color: black;
font-size: x-large;
font-family: fantasy;
margin-top: 5px;
margin-bottom: 5px;
}
.Latest{
padding-top: 10px;
}
#footer{
margin-top: 250px;
}
</style>
</head>
<body>
<%@ include file="Header.jsp"%>
	<div class="container cont">
		<div id="product" class="col-sm-12">
			<p class="Latest">Cart</p>
	</div>
		<table class="table table-stripped table-xs">
			<form action="updateCartItem?${cartitem.itemId}" />
			<tr>
				<th></th>
				<th>Product</th>
				<th class="text-right">Quantity</th>
				<th class="text-right">Price</th>
				<th class="text-right">SubTotal</th>
				<th class="text-center">Action</th>
			</tr>
					</form>
		</table>
	</div>
</body>
</html>