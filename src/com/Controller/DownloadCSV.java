package com.Controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ConnectionDAO;

/**
 * Servlet implementation class DownloadCSV
 */
public class DownloadCSV extends HttpServlet {
	Connection con;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadCSV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regstatus = request.getParameter("status");
		System.out.println(regstatus);
		String raceevent = request.getParameter("race");
		System.out.println(raceevent);
		response.setContentType("text/csv");
	    response.setHeader("Content-Disposition", "attachment; filename=\"Trainee.csv\"");
		try {
            ConnectionDAO cdao = new ConnectionDAO();
			con = cdao.getConnection();
		    PreparedStatement pst = con.prepareStatement("select firstname, lastname, user.email,registrationstatus from registration inner join registrationstatus on registration.registrationstatusid = registrationstatus.registrationstatusid inner join runner on registration.runnerid = runner.runnerid inner join user on user.email = runner.email inner join registrationevent on registration.registrationid = registrationevent.registrationid inner join event on registrationevent.eventid = event.eventid inner join eventtype on event.eventtypeid = eventtype.eventtypeid where registrationstatus.registrationstatusid = '"+regstatus+"' and eventtype.eventtypeid = '"+raceevent+"'");
		    ResultSet rs = pst.executeQuery();
		    OutputStream outputstream = response.getOutputStream();  
	    	while(rs.next()) {
	    		outputstream.write(("\n"+rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+"\n").getBytes());
		    }
		}
		catch(ClassNotFoundException | SQLException e) {
			  
		}
	}

}
