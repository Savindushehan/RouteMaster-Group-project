<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       input{
         font-size: 1.5rem;
          font-family: 'Roboto-Light';
          border:none;
          outline:none;
          border-radius: 8px;
        }
        button{
          text-align:center;
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
          margin-right:auto;
          margin-left:auto;
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
	<%
	String RID=request.getParameter("RID");
	String F_name=request.getParameter("F_name");
	String L_name=request.getParameter("L_name");
	String Phone=request.getParameter("Phone");
	String Username=request.getParameter("Username");
	String Password=request.getParameter("Password");
	%>
	
	<h1>Delete User Details</h1>
	
	<form action="deletecustomerServlet" method="post">
		 <div class="details">
		 				
                <div class="row1">
            
                    <div class="column1">
                        <h2>First Name</h2>
                        <input type="text" name="F_name" value="<%= F_name%>" readonly>
                    </div>
                    <div class="column2">
                        <h2>Last Name</h2>
                        <input type="text" name="L_name" value="<%= L_name%>" readonly>
                    </div>
                    <div class="column1">
                        <h2>Phone</h2>
                          <input type="text" name="Phone" value="<%= Phone%>" readonly>
                    </div>
                    
                </div>
                <div class="row2">
                    
                    <div class="column2">
                        	<h2>RID</h2>
                        <input type="text" name="RID" value="<%=RID%>" readonly>
                    </div>
                      <div class="column1">
                        <h2>Username</h2>
                         <input type="text" name="Username" value="<%= Username%>" readonly>
                    </div>
                    <div class="column2">
                        <h2>Password</h2>
                          <input type="text" name="Password" value="<%= Password%>" readonly>
                    </div>
                
                </div>
                
               
            </div>
             <button name="btn" id="btn"> Delete My Data</button>
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