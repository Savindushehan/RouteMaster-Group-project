package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class NewBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
			String RIDnew=request.getParameter("RIDnew");

			String before=request.getParameter("before");
			
			
		
			 try {
					request.setAttribute("attr7", RIDnew);

				 List<Ticket> TicDetails= TicketBookingutill.validate(RIDnew);
					request.setAttribute("TicDetails", TicDetails);
					
					RequestDispatcher dis=request.getRequestDispatcher("Ticket.jsp");
					dis.forward(request, response);
					   
			    } catch (Exception e) {
					
			        e.printStackTrace();
			    }
			 
		 
	}

}
