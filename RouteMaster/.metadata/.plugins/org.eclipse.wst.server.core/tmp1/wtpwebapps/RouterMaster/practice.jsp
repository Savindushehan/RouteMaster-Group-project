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
String value1 =	(String) request.getAttribute("attr1");
String value2 =	(String) request.getAttribute("attr2");
String value3 = (String) request.getAttribute("attr3");
String value4 = (String) request.getAttribute("attr4");
String value5 = (String) request.getAttribute("attr5");
String value6 = (String) request.getAttribute("attr6");


%>
<p>value1: <%= value1 %></p>
<p>value2: <%= value2 %></p>
<p>value3: <%= value3 %></p>
<p>value4: <%= value4 %></p>
<p>value5: <%= value5 %></p>
<p>value6: <%= value6 %></p>


<c:forEach var="cus" items="${regDetails}">

    <c:set var="RID" value="${cus.getRID()}"/>
    <c:set var="F_name" value="${cus.getFirst_Name()}"/>
    <c:set var="L_name" value="${cus.getLast_Name()}"/>
    <c:set var="Phone" value="${cus.getPhone()}"/>
    <c:set var="Username" value="${cus.getUsername()}"/>
    <c:set var="Password" value="${cus.getPassword()}"/>

    <div class="details">
        <div class="row1">
            <div class="column1">
                <h2>First Name</h2>
                <span>${cus.getFirst_Name()}</span>
            </div>
            <div class="column2">
                <h2>Last Name</h2>
                <span>${cus.getLast_Name()}</span>
            </div>
            <div class="column1">
                <h2>Phone</h2>
                <span>${cus.getPhone()}</span>
            </div>
        </div>
        <div class="row2">
            <div class="column2">
                <h2>RID</h2>
                <span>${cus.getRID()}</span>
            </div>
            <div class="column1">
                <h2>Username</h2>
                <span>${cus.getUsername()}</span>
            </div>
            <div class="column2">
                <h2>Password</h2>
                <span>${cus.getPassword()}</span>
            </div>
        </div>
    </div>
</c:forEach>

</body>
</html>
