<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>Shipping Address</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
body {
	background-image: url("resources/images/bg/b1.jpg");
}
label{
	color: gray;
}
.boxed{
	background-color: transparent; 
	color: white;
	margin: 30px 15px; 
	border: 2px solid white; 
	border-radius: 15px;
}
#footer{
margin-top: 250px;
}
#del{
margin-top: 13px;
margin-left: 13px;
margin-bottom: 13px;
}
#edit{
margin-top: 14px;
margin-left: 180px;
margin-bottom: 13px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/Header.jsp" %>	
<div style="margin-top: 100px;" class="container">
	<div style="text-align: left; float: right; clear: right;">
		<a href="add" style="border-radius: 8px;"
			class="btn btn-md btn-success"><span
			style="padding-top: 5px; padding-bottom: 7px;"
			class="glyphicon glyphicon-plus"></span>Add Address</a>
	</div>
	<br>
	<hr />
	<c:forEach items="${shipdetail}" var="ship">
		<div
			class="col-md-3 boxed">
			<a href="deleteAdd?shipmentId=${ship.shipmentId}"
				class="btn btn-sm btn-danger" id="del"><span
				class="glyphicon glyphicon-trash"></span></a><a
				href="getUpdateAdd?shipmentId=${ship.shipmentId}"
				class="btn btn-sm btn-warning" id="edit"><span
				class="glyphicon glyphicon-pencil"></span></a>
			<div style="text-align: center;">
				<strong style="padding-right: 5px; word-wrap: break-word;">Name:</strong>${ship.userName}</div>
			<div style="text-align: center;">
				<strong style="padding-right: 5px; word-wrap: break-word;">Address:</strong>${ship.address }</div>
			<div style="text-align: center;">
				<strong style="padding-right: 5px; word-wrap: break-word;">PhoneNo:</strong>${ship.contactNumber}</div>
			<div style="text-align: center; margin-bottom: 10px;">
				<a href="pay?shipmentId=${ship.shipmentId}"
					style="border-radius: 6px; margin-top: 10px;" class="btn btn-md btn-info"><span
					class="glyphicon glyphicon-envelope"></span> Deliver</a>
			</div>
		</div>
	</c:forEach>
</div>
</body>