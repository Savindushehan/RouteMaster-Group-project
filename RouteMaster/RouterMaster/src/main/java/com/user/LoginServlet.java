package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username=request.getParameter("usename");//form input name
		String Password=request.getParameter("password");//form input password

		
		
		try {
			List<RegisterUser> regDetails=RegisteruserDButy.validate(Username, Password);//above string code 
			request.setAttribute("regDetails", regDetails);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		String profile=request.getParameter("profile");
		if ("profile".equals(profile)) {
			/*
		    String attr1 = request.getParameter("attr1");
		    String attr2 = request.getParameter("attr2");
		    *
		   /* 
		   try {
		        List<RegisterUser> regDetails = RegisteruserDButy.validate(attr1,attr2);
		        request.setAttribute("regDetails", regDetails);
		        
		        // Forward to the "Profile.jsp" page
		        RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
		        dis.forward(request, response);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    */
			/*
		    RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp?attr1=" + attr1);
            dis.forward(request, response);
            */
			
			// Replace the following lines with your dynamic logic or user input retrieval
			  String dynamicValue1 = request.getParameter("U1");
			    String dynamicValue2 = request.getParameter("P1");

			request.setAttribute("attr1", dynamicValue1);
			request.setAttribute("attr2", dynamicValue2);

			 try {
			        List<RegisterUser> regDetails = RegisteruserDButy.validate(dynamicValue1,dynamicValue2);
			        request.setAttribute("regDetails", regDetails);
			        
			        // Forward to the "Profile.jsp" page
			        RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
			        dis.forward(request, response);
			    } catch (Exception e) {
			        e.printStackTrace();
			    }

		    
		}
		else {
			
			String U1=Username;
			String P1=Password;
			request.setAttribute("U1",U1);
			request.setAttribute("P1",P1);
			
			
			RequestDispatcher dis = (RequestDispatcher) request.getRequestDispatcher("MainHome.jsp");
			dis.forward(request,response);
			
		
		}
			
		
		
	}

}
