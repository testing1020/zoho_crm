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

<h2> list of all Contacts</h2>
<table>
	<tr>
	    <th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>LeadSource</th>
		<th>Mobile</th>
		<th>Billing</th>
	
	</tr>
<c:forEach items="${contacts}" var="contacts">

	<tr>
		<td>${contacts.id}</td>
		<td><a href="getLeadById?id=${leads.id}">${contacts.firstName}</a></td>
		<td>${contacts.lastName}</td>
		<td>${contacts.email}</td>
		<td>${contacts.leadSource}</td>
		<td>${contacts.mobile}</td>
		<td><a href="getContactById?id=${contacts.id}">Generate Bill</a></td>
		
	</tr>
</c:forEach>

</table>


</body>
</html>