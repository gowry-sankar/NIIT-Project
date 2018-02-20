
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<br>
<br>
<br><br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	body
	{
	background-image:url("resources/images/bd/b1.jpg");
	}
	</style>
    </head>
    <body>
    <%@ include file="Header.jsp"%>
    <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>LogIn with Us</div>
		</div>
		<br>
		<form action="isvaliduser" method="post">
	 <div class="login">
		
				<input type="text" placeholder="gmail" name="emailId" required><br><br>
				<input type="password" placeholder="password" name="password" required>
				 <div class="form-group">
				 <br>
   <!--  <label class="control-label col-sm-offset-2 col-sm-3" for="password"></label>
    <div class="col-sm-3">  -->
				<div class="error"><b>${error}</b></div>
	 			
			<div class="msg"><b>${logout}</b></div>
				</c:if>				
				<b>${message}</b><br>
				
  
 <button type="submit" class="btn btn-dark" id="subbutton">Login</button>
 				
				<br><br>
				    </div>
				</div>
				</form>
                
                <br><br><br>
		</body>
</html>
