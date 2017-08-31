package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDAO {
	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	Statement st;
	public AdminDAO()
		throws ClassNotFoundException,SQLException{
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
	
	public boolean login(String email, String password) throws SQLException {
		boolean result = false;
		String sql="select password from user where email = '"+email+"'";
		st=con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		if(rs.next()){
			
			if(rs.getString(1).equals(password)){
				result = true;
			}else
				result = false;
		}
		return result;

	}
	public String getGender(String email) throws SQLException {
		String gender = null;
	    pst = con.prepareStatement("select runner.gender from runner Inner Join user ON runner.email = user.email and user.email = '"+email+"';");
		ResultSet rs = pst.executeQuery();
	    while(rs.next()){
	    	
			gender = rs.getString(1);
		}
		return gender;
	}

	public String getRole(String email) throws SQLException {
		// TODO Auto-generated method stub
		String role = null;
		String sql="select role.RoleName from role Inner Join user ON role.roleid = user.roleid and user.email = '"+email+"';";
		st=con.createStatement();
		ResultSet rs = st.executeQuery(sql);
	    while(rs.next()){
	    	System.out.println(rs.getString(1));
			role = rs.getString(1);
		}
		return role;
	}
}
