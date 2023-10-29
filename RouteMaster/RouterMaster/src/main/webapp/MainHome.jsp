<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RouteMaster</title>
    <style>
        @font-face {
        font-family: 'Roboto-Light'; /* Font family name */
        src: url('Fonts/Roboto-Light.ttf') format('truetype'); /* URL to your font file */
        font-weight: normal;
        font-style: italic;
        }
        @font-face {
        font-family: 'Raleway-Light'; /* Font family name */
        src: url('Fonts/Raleway-Light.ttf') format('truetype'); /* URL to your font file */
        font-weight: normal;
        font-style: italic;
        }
        @font-face {
        font-family: 'Roboto-Bold'; /* Font family name */
        src: url('Fonts/Roboto-Bold.ttf') format('truetype'); /* URL to your font file */
        font-weight: normal;
        font-style: italic;
        }
        :root{
            --div-color1:#000000;
            --div-color2:#272702;
            --div-color3:#07FAFA;
            --div-color4:#FFFFFF;	
        }
        a{
            text-decoration: none;
        }
        body{
            margin: 0;
            padding: 0;
          background-color: #FA8BFF;
background-image: linear-gradient(45deg, #FA8BFF 0%, #2BD2FF 52%, #2BFF88 90%);

            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            
        }
        .head{
            display: flex;
            flex-direction: row;
            justify-content: right;
        }
        header h3{
            color: var(--div-color1);
            font-size:1rem;
            margin-right: 3rem;
            cursor: grab;
            padding: 0.5rem;
            border-radius: 0.5rem;
            outline: none;
            font-family: 'Roboto-Light'; 
        }
        .row1{
            margin-top: 2rem;
            width: 100%;
        }
        .row2{
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
        .row1,.row2{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
            margin-bottom: 3rem;
        }
        span{
            width: 10rem;
            padding-top: 0.8rem;
            padding-bottom: 0.8rem;
            text-align: center;
            border-radius: 10px;
            background-color: var(--div-color4);
            outline: none;
            font-family: 'Ralway-Light';
            cursor: pointer;
        }
        form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width:70%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 4rem;
        }
        .row3{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
            width: 100%;
        }
        h2{
           font-family: 'Roboto-Bold'; 
           font-size: 1.4rem;
        }
        input{
            width: 12rem;
            padding-top: 0.6rem;
            padding-bottom: 0.6rem;
            border: none;
            outline: none;
            border-radius: 5px;
            padding-left: 1rem;
        }
        button{
          text-align: center;
          padding-left: 2rem;
          padding-right: 2rem;
          padding-top: 0.8rem;
          padding-bottom: 0.8rem;
          border-radius: 10px;
          font-family: 'Roboto-Bold'; 
         background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%);
          color: var(--div-color4);
          border: none;
          outline: none;
          cursor: pointer;
          margin-top: 2rem;
        }
         button:hover{
         transform:scale(1.15);
        }
    </style>
</head>
<body>
<%
String attr1 = (String) request.getAttribute("U1");
String attr2 = (String) request.getAttribute("P1");
%>

    <header>
        <div class="head">
          <a href="MainHome.jsp"><h3 id="m1">Home</h3></a>
           <a href="AboutUs.jsp"><h3 id="m2">About</h3></a>
            <a href="ContactUS.jsp"><h3 id="m3">Contact</h3></a>
           <a href="login.jsp"><h3 id="m4">LogOut</h3></a>
        </div>
    </header>
    <main>
 <form action="log" method="Get">
 
   <c:forEach var="cus" items="${regDetails}">
        
        <c:set var="RID" value="${cus.getRID()}"/>
        <c:set var="F_name" value="${cus.getFirst_Name()}"/>
        <c:set var="L_name" value="${cus.getLast_Name()}"/>
        <c:set var="Phone" value="${cus.getPhone()}"/>
        <c:set var="Username" value=" ${cus.getUsername()}"/>
        <c:set var="Password" value="${cus.getPassword()}"/>
        
      <input type="hidden" name="RID" value="${cus.getRID()}">
      
 
 
 
 
 
   <input type="hidden" name="U1" value="<%= attr1 %>">
    <input type="hidden" name="P1" value="<%= attr2 %>">
    
      <div class="row1">
            <button id="s1" name="feedback" value="feedback">FEEDBACK</button>
            <button id="s2" name="inquiry" value="inquiry">INQUIRY</button>
            <button id="s3" name="viewinquiry">VIEW INQUIRY</button>
        </div>
       <div class="row2">       
		<button id="s4" name="ticket" value="ticket">VIEW ADD TICKETS</button>
   		 <button id="s5" name="viewfeedback">VIEW ADD FEEDBACK</button>
        <button id="s6" name="profile" value="profile">VIEW PROFILE</button>
	</div>
       
     
            <div class="row3">
                <div class="colomn1">
                     <h2>FROM</h2>
                    <input type="text" id="from" name="from" placeholder="From">                   
                </div>
                <div class="colomn2">
                    <h2>TO</h2>
                    <input type="text" id="to" name="to" placeholder="To">
                </div>
                <div class="colomn3">
                    <h2>JOURNEY DATE</h2>
                    <input type="date" id="date" name="date">
                     
                </div>
            </div>
            <button id="btn" name="btn" value="btn">Find Buses</button>
 
</form>
      </c:forEach>

 
    </main>
    
    <script>

        var M1=document.getElementById("m1");
        var M2=document.getElementById("m2");
        var M3=document.getElementById("m3");
        var M4=document.getElementById("m4");
        var BTN=document.getElementById("btn");
        var S1=document.getElementById("s1");
        var S2=document.getElementById("s2");
        var S3=document.getElementById("s3");
        var S4=document.getElementById("s4");
        var S5=document.getElementById("s5");
        var S6=document.getElementById("s6");
      

    
        M1.onmousemove=function(){
          M1.style.backgroundColor="var(--div-color3)";
          M1.style.color="var(--div-color4)";
        }
        M1.onmouseout=function(){
          M1.style.backgroundColor="";
          M1.style.color="var(--div-color1)";
        }
        M2.onmousemove=function(){
          M2.style.backgroundColor="var(--div-color3)";
          M2.style.color="var(--div-color4)";
        }
        M2.onmouseout=function(){
          M2.style.backgroundColor="";
          M2.style.color="var(--div-color1)";
        }
        M3.onmousemove=function(){
          M3.style.backgroundColor="var(--div-color3)";
          M3.style.color="var(--div-color4)";
        }
        M3.onmouseout=function(){
          M3.style.backgroundColor="";
          M3.style.color="var(--div-color1)";
        }
        M4.onmousemove=function(){
          M4.style.backgroundColor="var(--div-color3)";
          M4.style.color="var(--div-color4)";
        }
        M4.onmouseout=function(){
          M4.style.backgroundColor="";
          M4.style.color="var(--div-color1)";
        }
        /* Above javascript code must include all tha page.don't change the code.*/
        BTN.onmousemove=function(){
          BTN.style.color="var(--div-color1)";
          BTN.style.backgroundColor="var(--div-color4)";
        }
        BTN.onmouseout=function(){
          BTN.style.color="var(--div-color4)";
          BTN.style.backgroundColor="var(--div-color1)";
        }
        S1.onmousemove=function(){
            S1.style.backgroundColor="var(--div-color3)";
            S1.style.color="var(--div-color4)";
        }
        S1.onmouseout=function(){
            S1.style.backgroundColor="var(--div-color4)";
            S1.style.color="var(--div-color1)";
        }
        S2.onmousemove=function(){
            S2.style.backgroundColor="var(--div-color3)";
            S2.style.color="var(--div-color4)";
        }
        S2.onmouseout=function(){
            S2.style.backgroundColor="var(--div-color4)";
            S2.style.color="var(--div-color1)";
        }
        S3.onmousemove=function(){
            S3.style.backgroundColor="var(--div-color3)";
            S3.style.color="var(--div-color4)";
        }
        S3.onmouseout=function(){
            S3.style.backgroundColor="var(--div-color4)";
            S3.style.color="var(--div-color1)";
        }
        S4.onmousemove=function(){
            S4.style.backgroundColor="var(--div-color3)";
            S4.style.color="var(--div-color4)";
        }
        S4.onmouseout=function(){
            S4.style.backgroundColor="var(--div-color4)";
            S4.style.color="var(--div-color1)";
        }
        S5.onmousemove=function(){
            S5.style.backgroundColor="var(--div-color3)";
            S5.style.color="var(--div-color4)";
        }
        S5.onmouseout=function(){
            S5.style.backgroundColor="var(--div-color4)";
            S5.style.color="var(--div-color1)";
        }
        S6.onmousemove=function(){
            S6.style.backgroundColor="var(--div-color3)";
            S6.style.color="var(--div-color4)";
        }
        S6.onmouseout=function(){
            S6.style.backgroundColor="var(--div-color4)";
            S6.style.color="var(--div-color1)";
        }

       </script>
</body>
</html>