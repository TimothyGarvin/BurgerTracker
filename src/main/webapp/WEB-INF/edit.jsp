<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Burger</title>
</head>
<body>
	<!-- Form taken from index.jsp and adjusted action/hidden input -->
	<form:form action="/burgers/${burger.id}" mode="post" modelAttribute="burger">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label path="name">Burga Name:</form:label>
			<div></div>
			<form:errors path="name"/>
			<div></div>
			<form:input path="name"/>
		</div><hr/>
		<div>
			<form:label path="resturaunt">Restaurant Name:</form:label>
			<div></div>
			<form:errors path="resturaunt"/>
			<div></div>
			<form:input path="resturaunt"/>
		</div><hr/>
		<div>
			<form:label path="rating">Rating from 0-5:</form:label>
			<div></div>
			<form:errors path="rating"/>
			<div></div>
			<form:input path="rating"/>
		</div><hr/>
		<div>
			<form:label path="notes">Extra notes:</form:label>
			<div></div>
			<form:errors path="notes"/>
			<div></div>
			<form:textarea path="notes"/>
		</div><hr/>
		<div>
			<input type="submit" value="Update Burga"/>
		</div>
	</form:form>
</body>
</html>