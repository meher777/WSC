package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Pojo.CharityBean;

public class CharityDAO {
	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	Statement st;
	public CharityDAO()
		throws ClassNotFoundException,SQLException{
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
	
	public List getAllCharity() {
	    List charity = new ArrayList();
	    try {
	    	String sql = "SELECT * from charity";
	        st=con.createStatement();
	        ResultSet rs = st.executeQuery(sql);
	        
	        System.out.println("yes");
	        while (rs.next()) {
	            CharityBean charitybean = new CharityBean();
	            charitybean.setCharityName(rs.getString("CharityName"));
	            charitybean.setCharityDescription(rs.getString("CharityDescription"));
	            charitybean.setCharityLogo(rs.getString("CharityLogo"));
	            charity.add(charitybean);
	        }
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return charity;
	}
}
