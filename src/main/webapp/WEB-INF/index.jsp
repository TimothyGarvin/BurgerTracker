<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Burgahs</title>
</head>
<body>
	<h1>Burga' Tracka!</h1>
	<table>
		<thead>
			<tr>
				<th>Burger Name</th>
				<th>Restaurant Name</th>
				<th>Rating (0-5)</th>
				<th>Actions</th>
			</tr>
		</thead> 
		<tbody>
			<c:forEach var="burger" items="${burgers}">
				<tr>
					<td><c:out value="${burger.name}"/></td>
					<td><c:out value="${burger.resturaunt}"/></td>
					<td><c:out value="${burger.rating}"/></td>
					<td><a href="/burgers/${burger.id}/edit">Edit</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<hr/>
	<h2>Add a Brand New Burga'!</h2>
 	<form:form action="/makeABurger" mode="post" modelAttribute="burger">
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
			<input type="submit" value="Submit Burga"/>
		</div>
	</form:form>
</body>
</html>