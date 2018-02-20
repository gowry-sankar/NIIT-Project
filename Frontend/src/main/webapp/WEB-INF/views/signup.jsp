<%-- <%@ include file="Header.jsp"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<br>
<br>
<br>
<br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="Header.jsp" %>
      <div id="container">
         <header>Join With Us</header>
         <form action="addNewUser" method="post">
            <fieldset>
               <br/>
               <input type="text" name="userName" id="userName" placeholder="Username" required autofocus>
               <br/><br/>
               <input type="email" name="emailId" id="emailid" placeholder="E-mail" required>
               <br/><br/>
               <input type="password" name="password" id="password" placeholder="Password" required>
               <br/><br/>
               <input type="text" name="contactNumber" id="contactNumber" placeholder="Contact Number" required>
               <br/><br/>
               <input type="text" name="address" id="address" placeholder="Address" required>
               <br/><br/>
               <input type="text" name="zipcode" id="zipcode" placeholder="Zip code" required>
                <br/> <br/> <br/> <br/>
               <label for="submit"></label>
               <input type="submit"  id="submit" value="REGISTER">
            </fieldset>
         </form>
         <!-- name="submit" -->
      </div>
   </body>
</html>