<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
        <div class="head">
           <a href="Home.jsp"><h3 id="m1">Home</h3></a>
           <a href="AboutUs.jsp"><h3 id="m2">About</h3></a>
            <a href="ContactUS.jsp"><h3 id="m3">Contact</h3></a>
           <a href="login.jsp"><h3 id="m4">Login</h3></a>
        </div>
    </header>
<main>
    
<h1>Savndu</h1>
  <c:forEach var="cus" items="${regDetails}">
        
        <c:set var="RID" value="${cus.getRID()}"/>
        <c:set var="F_name" value="${cus.getIID()}"/>
        <c:set var="L_name" value="${cus.getdescripton()}"/>
        
                      <span> ${cus.getRID()}</span>
        		 <span> ${cus.getIID()}</span>
        		 <span> ${cus.getdescripton()}</span>
        				
        
  </c:forEach>
        
</main>

</body>
</html>