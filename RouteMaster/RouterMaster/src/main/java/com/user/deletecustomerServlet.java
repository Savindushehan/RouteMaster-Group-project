package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class deletecustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String RID=request.getParameter("RID");
		
		boolean isTrue;
		
		isTrue=RegisteruserDButy.deleteCustomer(RID);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher=(RequestDispatcher) request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<RegisterUser> regDetails=RegisteruserDButy.getuserDetails(RID);
			request.setAttribute("regDetails", regDetails);
			RequestDispatcher dispatcher=request.getRequestDispatcher("Profile.jsp");
			dispatcher.forward(request, response);
		}
	}

}
