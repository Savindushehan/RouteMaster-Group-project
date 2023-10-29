<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
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
            background-size: cover;
            background-position: center;
            background-color: #4158D0;
			background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
                 
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
        .row1,.row2,.row3{
      		 display: flex;
            flex-direction: row;
            width:100%;
		justify-content: space-around;
        }
        .row4{
         display: flex;
         flex-direction: row;
        justify-content: center;
         
        }
        h1{
         font-family: 'Roboto-Light'; 
          font-size:2rem;
        
         
        }
        #head{
         font-family: 'Roboto-Light'; 
          font-size:2rem;
         margin-left:40%;
        color:var(--div-color4);
        }
        .column{
        display:flex;
   		 flex-direction: column;
   		   justify-content: center;
   		   align-items: center;
        	width:25%
        }
        span{
        font-family: 'Raleway-Light'; 
        font-size:1.5rem;
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
          margin-right:3rem;
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
 <c:forEach var="Tic" items="${TicDetails}">
              
        <c:set var="RID" value="${Tic.getRID()}"/>
        <c:set var="F_ID" value="${Tic.getTicket_ID()}"/>
          <c:set var="place" value="${Tic.getPlace()}"/>
            <c:set var="visit" value="${Tic.getVisit()}"/>
            <c:set var="date" value="${Tic.getDate()}"/>
             <c:set var="seat" value="${Tic.getSeatNO()}"/>
                <c:set var="payment" value="${Tic.getPayment()}"/>
                
               <h1 id="head">Bus Ticket Booking</h1>
              
                    <input type="hidden" name="RID" value="${Tic.getRID()}">
              
               
               <div class="row1">
               <div class="column">
               <h1>RID</h1>
                <span>${Tic.getTicket_ID()}</span>
               </div>
               <div class="column">
                <h1>Ticket ID</h1>
                <span>${Tic.getRID()}</span>
               </div>
               <div class="column">
               <h1>Date</h1>
               <span>${Tic.getDate()}</span>
               </div>
               </div>
               <div class="row2">
                <div class="column">
               <h1>Form</h1>
               <span>${Tic.getPlace()}</span>
               </div>
                <div class="column">
               <h1>Destination</h1>
               <span>${Tic.getVisit()}</span>
               </div>
               </div>
               <div class="row3">
               <div clas="column">
               <h1>SeatNo</h1>
              <span>${Tic.getSeatNO()}</span>
               </div>
               <div class="column">
               <h1>Payment</h1>
				<span>${Tic.getPayment()}</span>
               </div>
               </div>
               <div class="row4">
          
               <c:url value="UpdateBooking.jsp" var="Ticupdate">
               <c:param name="RID" value="${F_ID}"></c:param>
               <c:param name="FID" value="${RID}"></c:param>
               <c:param name="place" value="${place}"></c:param>
               <c:param name="venue" value="${visit}"></c:param>
               <c:param name="date" value="${date}"></c:param>
               <c:param name="seats" value="${seat}"></c:param>
               <c:param name="payment" value="${payment}"></c:param>
                     </c:url>
           <a href="${Ticupdate}">
               <button id="btn" name="Edite">Edite Ticket</button>
              </a>
               <form action="deleteBookingServlet" method="Get">
                <input type="hidden" name="RID" value="${Tic.getRID()}">
               <button id="btn1" name="Delete">Delete Ticket</button>
               </form>
               </div>
            </c:forEach>
        
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
