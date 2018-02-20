
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
body {
	background-color:transparent;
	padding: 0px;
}
#footer{
margin-top: 100px;
}
</style>
	</head>
	<%@ include file="Header.jsp"%>
<div class="container">
	<div class="row text-center">
		<div class="col-sm-6 col-sm-offset-3">
			<br>
			<br>
			<br>
			<h2 style="color: limegreen">Success</h2>
			<h4>
				<font color="">Your Shipment will be delivered within
					${delDate}.....</font>
			</h4>

			<p style="font-size: 40px; color: white;">Thank you for
				shopping!!!</p>
			<a href="index" class="btn btn-success"> Visit Again </a> <br>
			<br>
		</div>

	</div>
</div>