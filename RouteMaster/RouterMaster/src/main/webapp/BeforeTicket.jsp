<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
<%
String value1 = (String) request.getAttribute("attr3");
%>
<p>value1: <%= value1 %></p>


<form action="NewBookingServlet" method="GET">
   <input type="hidden" name="RIDnew" value="<%= value1 %>">

<button id="btn1" name="before">Continue</button>

</form>
<h1>Savindu shehan</h1>
</body>
</html>