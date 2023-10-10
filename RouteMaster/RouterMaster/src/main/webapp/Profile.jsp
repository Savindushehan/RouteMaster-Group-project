<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
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
			background-image: url('Images/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            
        }
        body::before {
          content: "";
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background-color: rgba(245, 236, 236, 0.5); 
          z-index: -1;
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
        main{
        display:flex;
        flex-direction:column;
        justify-content:center;
        }
        h1{
          font-size: 2.5rem;
          text-align: center;
          margin-top: 3rem;
        }
        .row1,.row2{
        width:50vw;
        display: flex;
         flex-direction:column;
          justify-content: space-between;
        }
        .details{
         display: flex;
         flex-direction:row;
         justify-content: space-between;
       	 width:60vw;
        margin-left:auto;
        margin-right: auto;
 
        }
        .column1{
        	display:flex;
        	flex-direction:row;
        	align-items: center;
        }
        .column2{
        	display:flex;
        	flex-direction:row;
        	align-items: center;
        }
        h2{
         font-family: 'Raleway-Light';
          font-size: 2rem;
        }
        span{
         font-size: 1.5rem;
          font-family: 'Roboto-Light';
          margin-left:2rem;
           color:" var(--div-color1)";
        }
         button{
          text-align: center;
          padding-left: 2rem;
          padding-right: 2rem;
          padding-top: 0.8rem;
          padding-bottom: 0.8rem;
          border-radius: 10px;
          font-family: 'Roboto-Bold'; 
          background-color: var(--div-color1);
          color: var(--div-color4);
          border: none;
          outline: none;
          cursor: pointer;
          margin-right:2rem;
        }
        .brow{
       		 display:flex;
        	flex-direction:row;
        	align-items: center;
        	 justify-content: center;
        }
    </style>
</head>
<body>
     <header>
        <div class="head">
          <a href="Home.jsp"><h3 id="m1">Home</h3></a>
           <a href="AboutUs.jsp"><h3 id="m2">About</h3></a>
            <a href="ContactUS.jsp"><h3 id="m3">Contact</h3></a>
           <a href="login.jsp"><h3 id="m4">LogOut</h3></a>
        </div>
    </header>
    <main>
        <h1>Registered User Details</h1>
        
        <c:forEach var="cus" items="${regDetails}">
        
        <c:set var="RID" value="${cus.getRID()}"/>
        <c:set var="F_name" value="${cus.getFirst_Name()}"/>
        <c:set var="L_name" value="${cus.getLast_Name()}"/>
        <c:set var="Phone" value="${cus.getPhone()}"/>
        <c:set var="Username" value=" ${cus.getUsername()}"/>
        <c:set var="Password" value="${cus.getPassword()}"/>
        
            <div class="details">
                <div class="row1">
                    <div class="column1">
                        <h2>First Name</h2>
                        <span> ${cus.getFirst_Name()}</span>
                    </div>
                    <div class="column2">
                        <h2>Last Name</h2>
                        <span> ${cus.getLast_Name()}</span>
                    </div>
                    <div class="column1">
                        <h2>Phone</h2>
                        <span>${cus.getPhone()}</span>
                    </div>
                    
                </div>
                <div class="row2">
                    <div class="column2">
                        <h2>RID</h2>
                        <span> ${cus.getRID()}</span>
                    </div>
                     <div class="column1">
                        <h2>Username</h2>
                        <span> ${cus.getUsername()}</span>
                    </div>
                    <div class="column2">
                        <h2>Password</h2>
                        <span>${cus.getPassword()}</span>
                    </div>
                </div>
                
               
            </div>
        </c:forEach>
        
        <c:url value="Updateuserdetails.jsp" var="cusupdate">
        	<c:param name="RID" value="${RID}"></c:param>
        	<c:param name="F_name" value="${F_name}"></c:param>
        	<c:param name="L_name" value="${L_name}"></c:param>
        	<c:param name="Phone" value="${Phone}"></c:param>
        	<c:param name="Username" value="${Username}"></c:param>
        	<c:param name="Password" value="${Password}"></c:param>
        </c:url>
        
        <div class="brow">
        <a href="${cusupdate}">
        <button id="btn" name="update">Update My Data</button>
        </a>
        
        <c:url value="deletecustomer.jsp" var="cusdelete">
      		<c:param name="RID" value="${RID}"></c:param>
        	<c:param name="F_name" value="${F_name}"></c:param>
        	<c:param name="L_name" value="${L_name}"></c:param>
        	<c:param name="Phone" value="${Phone}"></c:param>
        	<c:param name="Username" value="${Username}"></c:param>
        	<c:param name="Password" value="${Password}"></c:param>
        </c:url>
        <a href="${cusdelete}">
         <button id="btn1" name="delete">Delete My Account</button>
        </a>
        </div>
    </main>
     <script>

        var M1=document.getElementById("m1");
        var M2=document.getElementById("m2");
        var M3=document.getElementById("m3");
        var M4=document.getElementById("m4");
        var BTN=document.getElementById("btn");
        var BTN1=document.getElementById("btn1");
    
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
        BTN1.onmousemove=function(){
            BTN1.style.color="var(--div-color1)";
            BTN1.style.backgroundColor="var(--div-color4)";
          }
          BTN1.onmouseout=function(){
            BTN1.style.color="var(--div-color4)";
            BTN1.style.backgroundColor="var(--div-color1)";
          }
       </script>
</body>
</html>
