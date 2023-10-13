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
	
	/*
	public static List<Ticket> validate(String RID){
		
		ArrayList<Ticket> Tic=new ArrayList<>();
		
		//Validate
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from Ticket where RID='"+RID+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int Ticket_ID=rs.getInt(1);
				String place=rs.getString(2);
				String visit=rs.getString(3);
				String date=rs.getString(4);
				String SeatNo=rs.getString(5);
				String Payment=rs.getString(6);
				int RID1=rs.getInt(7);
				
				Ticket  C=new Ticket(Ticket_ID,place,visit,date,SeatNo,Payment,Payment, Payment, Payment, Payment, Payment, RID1);
				Tic.add(C);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return Tic;
	}
	*/
	/*
	public static List<Ticket> validate(String RID) {
	    ArrayList<Ticket> Tic = new ArrayList<>();

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "select * from Ticket where RID='" + RID + "'";
	        ResultSet rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int Ticket_ID = rs.getInt(1);
	            String place = rs.getString(2);
	            String visit = rs.getString(3);
	            String date = rs.getString(4);
	            String SeatNo = rs.getString(5);
	            String Payment = rs.getString(6);
	            int RID1 = rs.getInt(7);

	            Ticket C = new Ticket(Ticket_ID, place, visit, date, SeatNo, Payment, RID1);
	            Tic.add(C);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        // Make sure to close the resources (Connection, Statement, ResultSet) to prevent resource leaks.
	        try {
	            if (stmt != null) {
	                stmt.close();
	            }
	            if (con != null) {
	                con.close();
	            }
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }

	    return Tic;
	}
	*/
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


	
	
/*	
public static boolean insertTicket(String place,String visit,String date,String SeatNo,String Payment,String RID){
		
		boolean isSuccess=false;
		
				
				try {
					con = DBConnect.getConnection();
					stmt=con.createStatement();
					
				String sql="insert into ticket values(0,'"+place+"','"+visit+"','"+date+"','"+SeatNo+"','"+Payment+"','"+RID+"')";
				ResultSet rs=stmt.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess=true;
				}else{
					isSuccess=false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		
		return isSuccess;
	}
	*/
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
	public static boolean updateTicketDetails(String Ticket_ID, String place, String venue, String date, String SeatNo, String Payment, String RID) {
	    boolean isSuccess = false;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();

	        // Use a PreparedStatement to prevent SQL injection
	        String sql = "UPDATE ticket SET SeatNo = ?, Payment = ? WHERE Ticket_ID = ?";
	        PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
	        preparedStatement.setString(1, SeatNo);
	        preparedStatement.setString(2, Payment);
	        preparedStatement.setString(3, Ticket_ID);

	        int rowsUpdated = preparedStatement.executeUpdate();

	        if (rowsUpdated > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle the exception appropriately, e.g., log the error or throw a custom exception
	    } finally {
	        // Close the resources (Statement) in a finally block
	        try {
	            if (stmt != null) {
	                stmt.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception appropriately, e.g., log the error or throw a custom exception
	        }
	    }

	    return isSuccess;
	}




}