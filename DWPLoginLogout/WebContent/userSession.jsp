<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login - Logout</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	
	<!-- Local style sheet in case needed for local modifications -->
	<link rel="stylesheet" href="styles/main.css">
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Login - Logout</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
<!--             <li class="active"><a href="index">Home</a></li> -->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<br />
<br />
<br />
    <div class="container">
	    ${message}
	    <div class="jumbotron">
		  <h1>Login - Logout</h1>
		  <p>
<!-- 		  <a class="btn btn-primary btn-lg float-left" href="editCustomer" role="button">Edit Customer</a> -->
<!-- 		  <a class="btn btn-primary btn-lg float-left margin_left" href="deleteCustomer" role="button">Delete Customer</a> -->
		  ${anchorTagEditString}
		  <span class="spacer float-left">&nbsp;</span>
		  ${anchorTagDeleteString}
		  </p><br><br>
<%--  		  <p>${custInformation}</p>  --%>
			<%
		String loggedIn = "logged out";
		
		if(session.getAttribute("status") != null)
			loggedIn = "logged in";
	%>
	<p>Select below:</p>
	<a href="login" class="btn btn-primary btn-lg">log in</a><span>&nbsp;&nbsp;</span><a href="logout" class="btn btn-primary btn-lg">log out</a><br><br>
	<p>Current status: <span class="redText"><%= loggedIn %></span></p>
		</div>
		${subTitle}
    </div>
	
</body>
</html>