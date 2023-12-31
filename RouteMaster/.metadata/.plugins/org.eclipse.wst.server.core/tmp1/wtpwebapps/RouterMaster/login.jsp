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
			background-image: url('Images/background.jpg');
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
        h1{
          font-size: 2.5rem;
          text-align: center;
          margin-top: 3rem;
        }
        form{
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          width: 30rem;
          margin-left: auto;
          margin-right: auto;
        }
        .row1,.row2{
          display: flex;
          flex-direction: column;
          justify-content: center;
          width: 15rem;
          margin-left: auto;
          margin-right: auto;
          margin-bottom: 1rem;
        }
        input{
          font-size: 0.9rem;
          font-family: 'Raleway-Light'; 
          width: 15rem;
          outline: none;
          padding-left: 1rem;
          padding-top: 0.4rem;
          padding-bottom: 0.4rem;
          border-radius: 5px;
          border: 2px solid red;
          border: none;
        }
        h2{
          font-size: 1.2rem;
          font-family: 'Raleway-Light'; 
        }
        span{
          font-size: 0.8rem;
          font-family: 'Raleway-Light'; 
          color: red;
          display: none;
        }
        #s2{
          margin-bottom: 0;
        }
        h4{
          margin-top: 0;
          text-align: right;
          font-size: 0.8rem;
          font-family: 'Raleway-Light'; 
          cursor: pointer;
        }
        #link{
          margin-top: 1rem;
          text-align: center;
          font-size: 1rem;
          font-family: 'Roboto-Bold'; 
          color: var(--div-color1);
          cursor: pointer;
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
        }

    </style>
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
        <h1>Login</h1>
       <form action="log" method="Get">
            <div class="row1"> 
            <h2>Username</h2>
            <input type="text" placeholder="Username" name="usename" id="username">
            <span id="s1">Can't empty</span>
            </div>
            <div class="row2">
                <h2>Password</h2>
                <input type="password" placeholder="Password" name="password" id="password">
                <span id="s2">Can't empty</span>
                <h4>Forgot Password</h4>
                </div>
              <button id="btn">Login</button>
               <a href="CreateAccount.jsp"><h4 id="link">Or Create Account</h4></a>
        </form>
    </main>
    <script>

        var M1=document.getElementById("m1");
        var M2=document.getElementById("m2");
        var M3=document.getElementById("m3");
        var M4=document.getElementById("m4");
        var BTN=document.getElementById("btn");
    
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
       </script>
</body>
</html>