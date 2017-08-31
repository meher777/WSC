package com.DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionDAO {
	

	
		Connection con;
		public  Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/marathon?useSSL=false","root","meher");
		System.out.println();
		return con;
		}
		
	}
