<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String attr1 = (String) request.getAttribute("attr1");
String attr2 = (String) request.getAttribute("attr2");
%>
<p>Attribute 1: <%= attr1 %></p>
<p>Attribute 2: <%= attr2 %></p>


</body>
</html>