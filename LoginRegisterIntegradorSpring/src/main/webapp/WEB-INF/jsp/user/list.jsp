<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
</head>
<body>
<a href='<c:url value="/logout" />'>Logout</a>
<br/>
	<table class="table table-bordered table-hover" border="1">
		<tr>
			<td>Username</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${list}" var="user">
			<tr>
				<td>${user.username }</td>
				<td> 
					<spring:url value="/user/changePass" var="changePassURL"></spring:url>
					<button class="btn btn-info"><a href="${changePassURL }/${user.username}">ChangePass</a></button>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>