<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>

<div class="jumbotron">
	
	<h1>Welcome user: <c:if test="${pageContext.request.userPrincipal.name !=null }">${pageContext.request.userPrincipal.name} </c:if></h1>
	</div>
	<br>
	<button class="btn btn-success"><a href='<c:url value="/user/list" />'>Users List</a></button>
	<br/>
	<br>
	<button class="btn btn-danger"><a href='<c:url value="/logout" />'>Logout </a></button>

</body>
</html>