package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class updateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RID=request.getParameter("RID");
		String F_name=request.getParameter("F_name");
		String L_name=request.getParameter("L_name");
		String Phone=request.getParameter("Phone");
		String Username=request.getParameter("Username");
		String Password=request.getParameter("Password");
		

		boolean isTrue;
		
		isTrue = RegisteruserDButy.updateuserdetails(RID, F_name, L_name, Phone,Username,Password);

		if (isTrue) {
			
			List<RegisterUser> regDetails=RegisteruserDButy.getuserDetails(RID);
			request.setAttribute("regDetails", regDetails);
			
		    RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
		    dis.forward(request, response);
		} else {
		    RequestDispatcher dis = request.getRequestDispatcher("MainHome.jsp");
		    dis.forward(request, response);
		}

	}

}
