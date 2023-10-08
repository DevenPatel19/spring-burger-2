<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<title>Insert title here</title>
</head>
<body>
		<h2 class="text-primary">Edit Burger</h2>
	<form:form action="/edit/${burger.id}" mode="put" modelAttribute="burger">
		<div>
			<form:label path="name">Burger Name:</form:label><br>
			<form:errors path="name" class="text-danger"/>
			<form:input path="name" style="width:250px;"/>
		</div>
		<div>
			<form:label path="restaurant">Restaurant Name:</form:label><br>
			<form:errors path="restaurant" class="text-danger"/>
			<form:input path="restaurant" style="width:250px;"/>
		</div>
		<div>
			<form:label path="rating">Rating:</form:label><br>
			<form:errors path="rating" class="text-danger"/>
			<form:input path="rating" style="width:250px;"/>
		</div>
		<div>
			<form:label path="notes">Notes:</form:label><br>
			<form:errors path="notes" class="text-danger"/>
			<form:textarea path="notes" rows="3" style="width:250px;"/>
		</div>
		<div>
			<input type="submit" value="Submit"/>
		</div>
	</form:form>
</body>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</html>