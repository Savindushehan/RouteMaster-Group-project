package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FeedbackinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String descripton=request.getParameter("feedback");

		 String dynamicValue3 = request.getParameter("R1");
		 request.setAttribute("RID", dynamicValue3);
		
		boolean isTrue;
		
		isTrue=RegisteruserDButy.insertfeedback(descripton,dynamicValue3);
		
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("MainHome.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("Home.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
