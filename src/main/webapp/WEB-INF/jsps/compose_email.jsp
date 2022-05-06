<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>compose Email</title>
</head>
<body>
	    <form action="sendEmail" method="post">
	    <pre>
	    to<input type="text" name="to" value="${email }"/>
	    Subject<input type="text" name="subject"/>
	
	    <textarea  name="body" rows="8" cols="70">
	    </textarea>
	    <input type="submit"  value="send Email"/>
	
	
	    
	    
	    
	    </pre>
	    </form>
</body>
</html>