package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/createuser")
public class createuser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String First_Name=request.getParameter("firstname");
		String Last_Name=request.getParameter("lastname");
		String Email=request.getParameter("email");
		String Username=request.getParameter("username");
		String Password=request.getParameter("password");
		String Phone=request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue=RegisteruserDButy.insertcustomer(First_Name, Last_Name, Phone, Email, Username, Password);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("MainHome.jsp");
			dis2.forward(request, response);
		}
	}

}
