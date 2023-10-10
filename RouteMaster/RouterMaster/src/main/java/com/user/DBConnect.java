package com.user;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;

public class DBConnect {
	private static String url="jdbc:mysql://localhost:3306/routemaster";
	private static String userName="root";
	private static String password="Savi0760768629";
	private static Connection con; 
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection) DriverManager.getConnection(url, userName, password);
			
		}catch(Exception e) {
			System.out.println("Database Connecton is not working");
		}
		return con; 
	}
}
