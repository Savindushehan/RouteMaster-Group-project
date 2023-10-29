package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
public class TicketBookingutill {
	private static boolean isSuccess;
	private static final String Password = null;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
		
	public static List<Ticket> validate(String RID) {
	    List<Ticket> tickets = new ArrayList<>();

	    try (Connection con = DBConnect.getConnection();
	         PreparedStatement pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM Ticket WHERE RID = ?")) {

	        pstmt.setString(1, RID);
	        ResultSet rs = pstmt.executeQuery();

	        while (rs.next()) {
	            int ticketID = rs.getInt("Ticket_ID");
	            String place = rs.getString("place");
	            String visit = rs.getString("visit");
	            String date = rs.getString("date");
	            String seatNo = rs.getString("SeatNo");
	            String payment = rs.getString("Payment");
	            int RID1 = rs.getInt("RID");

	            Ticket ticket = new Ticket(ticketID, place, visit, date, seatNo, payment, RID1);
	            tickets.add(ticket);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return tickets;
	}


	
	

	public static boolean insertTicket(String place, String visit, String date, String SeatNo, String Payment, String RID) {
	    boolean isSuccess = false;

	    try {
	        con = DBConnect.getConnection();
	        String sql = "insert into ticket (place, visit, date, SeatNo, Payment, RID) values (?, ?, ?, ?, ?, ?)";
	        PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
	        preparedStatement.setString(1, place);
	        preparedStatement.setString(2, visit);
	        preparedStatement.setString(3, date);
	        preparedStatement.setString(4, SeatNo);
	        preparedStatement.setString(5, Payment);
	        preparedStatement.setString(6, RID);

	        int rowsAffected = preparedStatement.executeUpdate();

	        if (rowsAffected > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}

	public static boolean deleteTicket(String Ticket_ID) {
		boolean isSuccess=false;
		
		int convId=Integer.parseInt(Ticket_ID);
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from ticket where Ticket_ID='"+convId+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}else{
				isSuccess=false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static boolean updateTicketDetails(String Ticket_ID,String place,String venue,String date,String SeatNo,String Payment, String RID) {
		boolean isSuccess=false;
		
		try {
			con = DBConnect.getConnection(); 
			stmt=con.createStatement();
			int convId=Integer.parseInt(Ticket_ID);
			int seat=Integer.parseInt(SeatNo);
			int payment=Integer.parseInt(Payment);


			
			String sql="update ticket set SeatNo='"+seat+"',Payment='"+payment+"'"
					+"where Ticket_ID='"+convId+"'";
			
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else{
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	


	public static List<Ticket> getTicketDetails(String FID) {
	    ArrayList<Ticket> tickets = new ArrayList<>();
	    int convertID = Integer.parseInt(FID);
	    
	    Connection connection = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	    
	    try {
	        connection = DBConnect.getConnection();
	        String sql = "SELECT * FROM ticket WHERE Ticket_ID=?";
	        preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
	        preparedStatement.setInt(1, convertID);
	        resultSet = preparedStatement.executeQuery();
	        
	        while (resultSet.next()) {
	            int id = resultSet.getInt(1);
	            String place = resultSet.getString(2);
	            String visit = resultSet.getString(3);
	            String date = resultSet.getString(5);
	            String seat = resultSet.getString(6);
	            String payment = resultSet.getString(7);
	            int RID = resultSet.getInt(8);
	            
	            Ticket ticket = new Ticket(id, place, visit, date, seat, payment, RID);
	            tickets.add(ticket);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (resultSet != null) resultSet.close();
	            if (preparedStatement != null) preparedStatement.close();
	            if (connection != null) connection.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return tickets;
	}


}
