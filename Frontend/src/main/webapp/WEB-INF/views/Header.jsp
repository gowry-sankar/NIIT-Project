<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
  .navbar-default {
    background-color:white;
    border-color: white;
}

.navbar-default .navbar-brand {
    color: gray;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: Black;
}
.navbar-default .navbar-nav > li > a {
    color: white;
}
.nav .open>a, .nav .open>a:focus, .nav .open>a:hover{
    background-color: gray;
}
.navbar, .dropdown-menu{
background:gray  ;
border: none;

}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a, .dropdown-menu>li{
  border-bottom: 2px solid transparent;
}
.nav>li>a:focus, .nav>li>a:hover,.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
  border-bottom: 2px solid transparent;
  background: none;
}
.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .navbar-toggle{
 color: black;
}
.dropdown-menu{
      -webkit-box-shadow: none;
    box-shadow:none;
}

.nav li:hover:nth-child(8n+1), .nav li.active:nth-child(8n+1){
  border-bottom: green 2px solid;
}
.nav li:hover:nth-child(8n+2), .nav li.active:nth-child(8n+2){
  border-bottom: red 2px solid;
}
.nav li:hover:nth-child(8n+3), .nav li.active:nth-child(8n+3){
  border-bottom:blue 2px solid;

}
.nav li:hover:nth-child(8n+4), .nav li.active:nth-child(8n+3){
  border-bottom:yellow 2px solid;
  }


.navbar-right {
margin-right:12px;
}
 i {
   padding-left:12px;
   }
  </style>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
</head>
<body>
 <div class="container-fluid">
 <div class="row">
<nav class="navbar navbar-default navbar-fixed-top">
  
  <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
       <c:if test="${pageContext.request.userPrincipal.name != null }">
                               
                                <li><a href="index">Home</a></li>
                                </c:if>
    <c:if test="${pageContext.request.userPrincipal.name == null }">
      <li><a href="index">Home</a></li>
       </c:if>
       <c:if test="${pageContext.request.userPrincipal.name==null }">
							<li><a href="displayartist" id="page">Seller</a></li>
							<li><a href="albums" id="page">Products</a></li>
							</c:if>
							<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="displayartist" id="page">Seller</a></li>
							<li><a href="albums" id="page">Products</a></li>
							</security:authorize> 
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="CategoryView">View Category</a></li>
          <li><a href="Category">Add Category</a></li>
        
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Seller<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="SupplierView">View Seller</a></li>
          <li><a href="Supplier">Add Seller</a></li>
        
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewProduct">View Product</a></li>
          <li><a href="Product">Add Product</a></li>
       
        </ul>
      </li>
      </security:authorize>
      <li><a href="About">About Us</a></li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name==null }">
    <c:url value="/login" var="login"> </c:url>
     <li><a href="${login}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     <c:url value="/signup" var="signup"> </c:url>
      <li><a href="${signup}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
									<li id="right"><security:authorize access="hasRole('ROLE_USER')">
					<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
					
					<li><a href="myCart"><span
									class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
									<li><a href="History"><span
									class="glyphicon glyphicon-list"></span> Orders</a></li>
					</security:authorize><security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="admincart"><span
									class="glyphicon glyphicon-list-alt"></span> Orders</a></li>
					</security:authorize></li>
					
					<c:url value="/logout" var="logout"></c:url>
							<li id="right"><a href="${logout}"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
									</c:if>
      </ul>
    </div>
  </div>
  </div>
</nav>
</body>
</html>