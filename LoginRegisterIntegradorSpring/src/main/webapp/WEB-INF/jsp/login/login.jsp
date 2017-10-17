<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Login</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header imgapp">
    	<img class="img_app" src="<c:url value="/resources/img/ic_app.png"/>"/>
    </div>
    <ul class="nav navbar-nav">
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href='<c:url value="/user/signup" />'><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    </ul>
  </div>
</nav>


<div class="container">
<div class="container">
	<div class="jumbotron">
		<h1><center>Login Page</center></h1>
	</div>
</div>
	
	<form name="loginForm" action='<c:url value="j_spring_security_check" />' method="post">
	
	
	
		<table class="table">
			<tr> 
				<td colspan="2">Login</td>
			</tr>
			
			<tr> 
				<td colspan="2">${msg}</td>
			</tr>
			<tr>
				<td>Username:</td>
				<td>
				<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td>
				<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td>Remember me:</td>
				<td> <input type="checkbox" name="rember-me"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button class="btn btn-sucess" type="submit">Login</button>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href='<c:url value="/user/signup" />'>Sign Up </a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>