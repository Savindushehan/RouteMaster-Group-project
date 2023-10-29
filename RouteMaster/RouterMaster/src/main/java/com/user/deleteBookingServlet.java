package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class deleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String FRID=request.getParameter("RID");
		
	boolean isTrue;
		
		isTrue=TicketBookingutill.deleteTicket(FRID);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher=(RequestDispatcher) request.getRequestDispatcher("MainHome.jsp");
			dispatcher.forward(request, response);
		}
		else {

			 List<Ticket> TicDetails= TicketBookingutill.validate(FRID);
				request.setAttribute("TicDetails", TicDetails);
				
				RequestDispatcher dis=request.getRequestDispatcher("Ticket.jsp");
				dis.forward(request, response);
		}
	}

	}


