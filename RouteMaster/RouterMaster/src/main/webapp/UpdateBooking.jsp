<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RouteMaste</title>
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
           background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%);
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
        span{
            width: 3rem;
            text-align: center;
            padding-top: 1rem;
            padding-bottom: 1rem;
            border-radius: 5px;
            background-color:rgb(16, 129, 41);
            outline: none;
            cursor: pointer;
            font-family: 'Roboto-Light'; 

        }
         span:hover{
         transform:scale(1.15);
         color:
        }
        .side1{
            width: 30%;
            height: 70vh;
        }
        .side2{
            width: 30%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .row1,.row2,.row3,.row4{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            margin-bottom: 12vh;
        }
        .column1,.column2{
            width: 40%;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
        }
        main{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
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
          transition:all 0.3s;
        }
        .details1,.details2{
            display: flex;
            flex-direction: row;
            justify-content:space-between;
            align-items: center;
        }
        h1{
          font-size: 2.5rem;
          text-align: center;
          margin-top: 1.5rem;
        }
        h2{
            font-size: 1.2rem;
          font-family: 'Raleway-Light'; 
        }
        #seats{
            font-size: 1.2rem;
          font-family: 'Raleway-Light'; 
            margin-left: 1rem;
        }
        #total{
            font-size: 1.2rem;
          font-family: 'Raleway-Light'; 
            margin-left: 1rem;

        } 
         input{
          font-size: 1.5rem;
          font-family:'Raleway-Light'; 
          width: 15rem;
          outline: none;
          padding-left: 1rem;
          padding-top: 0.2rem;
          padding-bottom: 0.2rem;
          border-radius: 5px;
          border: 2px solid red;
          border: none;
          background: transparent;
          margin-top: 1rem;
          border:2px solid rgb(255, 249, 249);
        }
         #btn:hover{
         transform:scale(1.15);
        }
		  span:hover{	
         transform:scale(1.15);
         border:1px solid red;
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
        <div class="side1">
            <div class="row1">
                <div class="column1">
                    <span id="s1">1</span>
                    <span id="s2">2</span>
                </div>
            <div class="column2">
                <span id="s3">3</span>
                <span id="s4">4</span>
            </div>
        </div>
        <div class="row2">
            <div class="column1">
                <span id="s5">5</span>
                <span id="s6">6</span>
            </div>
        <div class="column2">
            <span id="s7">7</span>
            <span id="s8">8</span>
        </div>
    </div>
    <div class="row3">
        <div class="column1">
            <span id="s9">9</span>
            <span id="s10">10</span>
        </div>
    <div class="column2">
        <span id="s11">11</span>
        <span id="s12">12</span>
    </div>
</div>
<div class="row4">
    <div class="column1">
        <span id="s13">13</span>
        <span id="s14">14</span>
    </div>
<div class="column2">
    <span id="s15">15</span>
    <span id="s16">16</span>
</div>
</div>
        </div>
        <div class="side2">
            <form action="BookingServlet" method="Get">
 <h1>Seat Details</h1>
 
 <%
 
 String RID=request.getParameter("RID");
 String FID=request.getParameter("FID");
 String place=request.getParameter("place");
 String venue=request.getParameter("venue");
 String date=request.getParameter("date");
 String seats=request.getParameter("seats");
 String payment=request.getParameter("payment");

 %>
 
  	
		<p id="seat" name="seat"></p>
		<p id="tota" name="tota"></p>
<div class="column10">
 <input type="text" name="RID" value="<%=RID%>" readonly>
 </div>
 <div class="column10">
  <input type="text" name="FID" value="<%=FID%>" readonly>
 </div>
 <div class="column10">
  <input type="text" name="place" value="<%=place%>" readonly>
 </div>
 <div class="column10">
   <input type="text" name="Venue" value="<%=venue%>" readonly>
 </div>
  <div class="column10">
   <input type="text" name="date" value="<%=date%>" readonly>
 </div>
 
    <div class="details1">
        <h2>Seats</h2>
        <label id="sea" name="seat">0</label>
    </div>
    <div class="details2">
        <h2>Total</h2>
        <label id="total" name="total">0</label>
        
        <input type="hidden" name="seats" id="seats">
<input type="hidden" name="total" id="totals">
 
    </div>
    <button id="btn">Continue to pay</button>
 
 
 </div>
                
            </form>
            
        </div>
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
        var S7=document.getElementById("s7");
        var S8=document.getElementById("s8");
        var S9=document.getElementById("s9");
        var S10=document.getElementById("s10");
        var S11=document.getElementById("s11");
        var S12=document.getElementById("s12");
        var S13=document.getElementById("s13");
        var S14=document.getElementById("s14");
        var S15=document.getElementById("s15");
        var S16=document.getElementById("s16");
        var Seats=document.getElementById("sea");
        var Total=document.getElementById("total");
        function updateSeatsLabel() {
            var seatsLabel = document.getElementById("seats");
            var Total1=document.getElementById("totals");
            if (seatsLabel) {
                seatsLabel.value = count;
                Total1.value=count*450;
               
            }
        }      
    
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

        var s1=1;
        var count=0;
        S1.onclick=function(){
            if(s1==1){
                S1.style.backgroundColor="red";
                ++s1;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450
                updateSeatsLabel(); // Update the label

            }else if(s1==2){
                --s1;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S1.style.backgroundColor="rgb(16, 129, 41)"
                    updateSeatsLabel(); // Update the label

            }
        }
        var s2=1;
        S2.onclick=function(){
            if(s2==1){
                S2.style.backgroundColor="red";
                ++s2;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label

            }else if(s2==2){
                --s2;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S2.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label

            }
        }
        var s3=1;
        S3.onclick=function(){
            if(s3==1){
                S3.style.backgroundColor="red";
                ++s3;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label

            }else if(s3==2){
                --s3;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S3.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label

            }
        }
        var s4=1;
        S4.onclick=function(){
            if(s4==1){
                S4.style.backgroundColor="red";
                ++s4;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count
                updateSeatsLabel(); // Update the label


            }else if(s4==2){
                --s4;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S4.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label

            }
        }
        var s5=1;
        S5.onclick=function(){
            if(s5==1){
                S5.style.backgroundColor="red";
                ++s5;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label
            }else if(s5==2){
                --s5;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S5.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s6=1;
        S6.onclick=function(){
            if(s6==1){
                S6.style.backgroundColor="red";
                ++s6;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label

            }else if(s6==2){
                --s6;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S6.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s7=1;
        S7.onclick=function(){
            if(s7==1){
                S7.style.backgroundColor="red";
                ++s7;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label
            }else if(s7==2){
                --s7;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S7.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s8=1;
        S8.onclick=function(){
            if(s8==1){
                S8.style.backgroundColor="red";
                ++s8;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label
            }else if(s8==2){
                --s8;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S8.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s9=1;
        S9.onclick=function(){
            if(s9==1){
                S9.style.backgroundColor="red";
                ++s9;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label

            }else if(s9==2){
                --s9;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S9.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s10=1;
        S10.onclick=function(){
            if(s10==1){
                S10.style.backgroundColor="red";
                ++s10;
                ++count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label
            }else if(s10==2){
                --s10;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S10.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s11=1;
        S11.onclick=function(){
            if(s11==1){
                S11.style.backgroundColor="red";
                ++s11;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count;
                updateSeatsLabel(); // Update the label

            }else if(s11==2){
                --s11;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S11.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s12=1;
        S12.onclick=function(){
            if(s12==1){
                S12.style.backgroundColor="red";
                ++s12;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count;
                updateSeatsLabel(); // Update the label

            }else if(s12==2){
                --s12;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S12.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s13=1;
        S13.onclick=function(){
            if(s13==1){
                S13.style.backgroundColor="red";
                ++s13;
                ++count;
                Total.innerHTML=count*450;
                updateSeatsLabel(); // Update the label
            }else if(s13==2){
                --s13;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S13.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s14=1;
        S14.onclick=function(){
            if(s14==1){
                S14.style.backgroundColor="red";
                ++s14;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count;
                updateSeatsLabel(); // Update the label

            }else if(s14==2){
                --s14;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S14.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s15=1;
        S15.onclick=function(){
            if(s15==1){
                S15.style.backgroundColor="red";
                ++s15;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count;
                updateSeatsLabel(); // Update the label

            }else if(s15==2){
                --s15;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S15.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
        var s16=1;
        S16.onclick=function(){
            if(s16==1){
                S16.style.backgroundColor="red";
                ++s16;
                ++count;
                Total.innerHTML=count*450;
                Seats.innerHTML=count;
                updateSeatsLabel(); // Update the label

            }else if(s16==2){
                --s16;
                --count;
                Seats.innerHTML=count;
                Total.innerHTML=count*450;
                S16.style.backgroundColor="rgb(16, 129, 41)";
                updateSeatsLabel(); // Update the label
            }
        }
      
        updateSeatsLabel();
		

       </script>
</body>
</html>