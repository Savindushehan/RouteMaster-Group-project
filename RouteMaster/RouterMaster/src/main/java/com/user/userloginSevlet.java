package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class userloginSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username=request.getParameter("usename");
		String Password=request.getParameter("password");
		boolean isTrue;
		
		isTrue=RegisteruserDButy.valdate(Username, Password);
		
		if(isTrue==true) {
			RequestDispatcher dis = (RequestDispatcher) request.getRequestDispatcher("MainHome.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis = (RequestDispatcher) request.getRequestDispatcher("Home.jsp");
			dis.forward(request,response);
		}
	}

}
