<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        h1{
          font-size: 2.5rem;
          text-align: center;
          margin-top: 2.5rem;
        }
        h4{
            font-family: 'Roboto-Light'; 
            font-size: 1rem;
            width: 40rem;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            line-height: 1.5rem;
            margin-top: 0;
        }
        span{
            font-family:'Roboto-Bold'; 
            font-size: 1.3rem;
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
        <h1>Contact Us</h1>
        <h4>Phone: 123-466-748
            Email: sadvfdg@gmail.com
            Mailing Address: RouteMaste Colombo Sri Lanka
            <br>
        <span>Get in Touch</span>
            <br>
            We value your feedback and inquiries. If you have any questions, concerns, or suggestions, please don't hesitate to reach out to us. Our dedicated customer support team is here to assist you.
            <br>
            <span>Customer Support</span>
            <br>
            For immediate assistance or general inquiries, you can contact our customer support team via phone or email. We're available to help you 24/7.
            <br>
            <span>Technical Support</span>
            <br>
            If you encounter technical issues while using our platform, please contact our technical support team at techsupport@routemaster.com. We'll promptly address any technical concerns to ensure your experience with RouteMaster is seamless.</h4>
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