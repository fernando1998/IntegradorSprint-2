<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Sign up</title>
</head>
<body>
	<div class="container">
	
	<div class="jumbotron">
		<h1><center>Register Page</center></h1>
	</div>
	<spring:url value="/user/register" var="registerURL"/>
	<form:form action="${registerURL }" modelAttribute="userForm" method="post">
	
	<div class="form-group">
	<label>Username:</label>
	<form:input  class="form-control" path="username" type="text"/>
	</div>
	<div class="alert alert-danger">
	<form:errors path="username" />
	</div>
	
	<br/>
	<div class="form-group">
	<label>Password:</label>
	<form:password class="form-control" path="password" />
	</div>
	<div class="alert alert-danger">
	<form:errors path="password" />
	</div>
	<br/>
	<div class="form-group">
	<label>Confirm Password:</label>
	<form:password  class="form-control" path="confirmPassword" />
	</div>
	
		<div class="alert alert-danger">
 		 <strong><form:errors path="confirmPassword" /></strong> 
		</div>
		<br/>
		
		<button class="btn btn-success"type="submit">Sign up</button>
	</form:form>
	</div>

</body>
</html>