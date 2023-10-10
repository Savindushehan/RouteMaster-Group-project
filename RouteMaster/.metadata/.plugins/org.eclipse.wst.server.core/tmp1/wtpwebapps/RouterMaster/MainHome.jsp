<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            background-image: url(background.jpg);
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
          background-color: var(--div-color1);
          color: var(--div-color4);
          border: none;
          outline: none;
          cursor: pointer;
          margin-top: 2rem;
        }
    </style>
</head>
<body>
<%
String attr1 = (String) request.getAttribute("U1");
String attr2 = (String) request.getAttribute("P1");
%>
<p>value 1: <%= attr1 %></p>
<p>value 2: <%= attr2 %></p>


    <header>
        <div class="head">
          <a href="Home.jsp"><h3 id="m1">Home</h3></a>
           <a href="AboutUs.jsp"><h3 id="m2">About</h3></a>
            <a href="ContactUS.jsp"><h3 id="m3">Contact</h3></a>
           <a href="login.jsp"><h3 id="m4">LogOut</h3></a>
        </div>
    </header>
    <main>
 <form action="log" method="Get">
   <input type="hidden" name="U1" value="<%= attr1 %>">
    <input type="hidden" name="P1" value="<%= attr2 %>">
    
        <button id="s6" name="profile" value="profile">VIEW PROFILE</button>
 
</form>
 
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