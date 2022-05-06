<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c"  uri ="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>leads</title>
</head>
<body>
<a href="view">CreateLead</a>
<h2> list of all Leads</h2>
<table>
	<tr>
	    <th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>LeadSource</th>
		<th>Mobile</th>
	
	</tr>
<c:forEach items="${leads}" var="leads">

	<tr>
		<td>${leads.id}</td>
		<td><a href="getLeadById?id=${leads.id}">${leads.firstName}</a></td>
		<td>${leads.lastName}</td>
		<td>${leads.email}</td>
		<td>${leads.leadSource}</td>
		<td>${leads.mobile}</td>
		
	</tr>
</c:forEach>

</table>


</body>
</html>