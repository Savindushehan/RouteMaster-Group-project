package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

	
		String seats=request.getParameter("seats");
		String total=request.getParameter("total");
		String RID=request.getParameter("RID");
		String venue=request.getParameter("venue");
		String destination=request.getParameter("destination");
		String date=request.getParameter("date");
		String RIDnew=request.getParameter("RIDnew");
		
	

		request.setAttribute("attr1", seats);
		request.setAttribute("attr2", total);
		request.setAttribute("attr3", RID);
		request.setAttribute("attr4", venue);
		request.setAttribute("attr5", destination);
		request.setAttribute("attr6", date);
		request.setAttribute("attr7", RIDnew);
		
		
		
		String before=request.getParameter("before");


	
		
		 
			boolean isTrue;
		
		
			
		isTrue=TicketBookingutill.insertTicket(venue, destination, date, seats, total, RID);
		

		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("MainHome.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("MainHome.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
