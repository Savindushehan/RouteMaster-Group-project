<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<% 
String username = (String) request.getAttribute("U1");
String password = (String) request.getAttribute("P1");


String uu1=username;
request.setAttribute("myU1",uu1);
String pp1=password;
request.setAttribute("myP1",pp1);
RequestDispatcher d1 = (RequestDispatcher) request.getRequestDispatcher("LoginServel");
d1.forward(request,response);


%>


</body>
</html>