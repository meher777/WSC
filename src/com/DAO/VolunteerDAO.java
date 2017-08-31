package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Pojo.VolDetails;

public class VolunteerDAO {
Connection con;
PreparedStatement pst;
ResultSet rs;
ConnectionDAO cdao = new ConnectionDAO();
	public VolunteerDAO() throws ClassNotFoundException, SQLException{
	con=cdao.getConnection();
	}
	
	public ArrayList<VolDetails> getDetails(String status) throws SQLException{
		System.out.println(status+"in dao");
		ArrayList<VolDetails> vdao = new ArrayList<VolDetails>();
		pst = con.prepareStatement("select volunteer.firstname,volunteer.lastname,volunteer.gender,country.countryname from country inner join volunteer on volunteer.countrycode = country.countrycode order by ?;");
	    pst.setString(1,status);
		rs = pst.executeQuery();
	    while(rs.next()){
	    	String firstname = rs.getString(1);
	    	System.out.println(firstname +"in dao");
	    	String lastname= rs.getString(2);
	    	String country=rs.getString(4);
	    	String gender=rs.getString(3);
	    	VolDetails v = new VolDetails(firstname,lastname,country,gender);
	    	vdao.add(v);
	    }
	    return vdao;
	}
}
