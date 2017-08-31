package com.DAO;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Pojo.RManagement;
import com.Pojo.Runner;
import com.Pojo.RunnerDetails;
import com.Pojo.Sponsor;



public class RunnerDAO {
	ConnectionDAO cdao;
	Connection con;
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	public RunnerDAO() throws ClassNotFoundException, SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
	
	public ArrayList<Runner> listResults(String email) throws SQLException, ClassNotFoundException, IOException {
		System.out.println(email);
		ArrayList<Runner> tbeanList = new ArrayList<Runner>();
	    pst = con.prepareStatement("select eventtypename,marathonname,racetime from eventtype inner join event on eventtype.eventtypeid = event.eventtypeid inner join marathon on marathon.marathonid = event.marathonid inner join registrationevent on registrationevent.eventid = event.eventid inner join registration on registrationevent.registrationid = registration.registrationid inner join runner on runner.runnerid = registration.runnerid where runner.email = '"+email+"';");
	    rs = pst.executeQuery();			   	    
	    while(rs.next()) {
	    	 int time = Integer.parseInt(rs.getString(3));
	    	 String marathon = rs.getString(1);
	    	 String event = rs.getString(2);
	    	 Runner rb = new Runner(marathon,event,time);
		   	     tbeanList.add(rb);


	   }
	    return tbeanList;
	}
	
	public ArrayList<Sponsor> GetAllSponsorDetails(String email) throws SQLException{
		ArrayList<Sponsor> sponsor = new ArrayList<Sponsor>();
		pst = con.prepareStatement("SELECT charity.CharityName,charity.CharityLogo, charity.CharityDescription, sponsorship.SponsorName,sponsorship.Amount from runner,registration,charity,sponsorship where runner.RunnerId=registration.RunnerId and registration.CharityId=charity.CharityId and registration.RegistrationId=sponsorship.RegistrationId and runner.email='"+email+"'");
		rs = pst.executeQuery();
		while(rs.next()){
			String charity = rs.getString(1);
			String logo = rs.getString(2);
			String description = rs.getString(3);
			String sponsorship = rs.getString(4);
			String amount = rs.getString(5);
			Sponsor s = new Sponsor(charity,logo,description,sponsorship,amount);
			sponsor.add(s);
		}
		return sponsor;
		
	}
	
	
	public ArrayList<RManagement> RunnerManagement(String status, String raceevent) throws SQLException{
		ArrayList<RManagement> rm  = new ArrayList<RManagement>();
		pst = con.prepareStatement("select firstname, lastname, user.email,registrationstatus from registration inner join registrationstatus on registration.registrationstatusid = registrationstatus.registrationstatusid inner join runner on registration.runnerid = runner.runnerid inner join user on user.email = runner.email inner join registrationevent on registration.registrationid = registrationevent.registrationid inner join event on registrationevent.eventid = event.eventid inner join eventtype on event.eventtypeid = eventtype.eventtypeid where registrationstatus.registrationstatusid = '"+status+"' and eventtype.eventtypeid = '"+raceevent+"'");
		rs = pst.executeQuery();
		while(rs.next()){
			String firstname = rs.getString(1);
		    String lastname = rs.getString(2);
		    String email =rs.getString(3);
		    String regstatus = rs.getString(4);
		    
		    RManagement rd = new RManagement(firstname,lastname,email,regstatus);
		    rm.add(rd);
		}
		return rm;
	}
	
	public String getPath(String email) throws SQLException {
		System.out.println(email);
		String marathon = null;
		String country = null;
		String msg = "You cannot view your certificate";
		String q ="select marathonname,cityname from marathon inner join event on marathon.marathonid = event.marathonid inner join registrationevent on event.eventid = registrationevent.eventid inner join registration on registrationevent.registrationid = registration.registrationid inner join runner on registration.runnerid = runner.runnerid where runner.email= '"+email+"'";
		System.out.println(q);
		pst = con.prepareStatement("select marathonname,cityname from marathon inner join event on marathon.marathonid = event.marathonid inner join registrationevent on event.eventid = registrationevent.eventid inner join registration on registrationevent.registrationid = registration.registrationid inner join runner on registration.runnerid = runner.runnerid where runner.email = '"+email+"';");
		rs = pst.executeQuery();
		while(rs.next()){
			marathon = rs.getString(1);
		    country = rs.getString(2);
		    System.out.println(marathon);
		    System.out.println(country);
		     msg = marathon+" "+country;  
		}
		    System.out.println(msg);
		return msg;  
	}
	
	public ArrayList<RunnerDetails> getRunnerDetails(String email) throws SQLException{
		ArrayList<RunnerDetails> rm  = new ArrayList<RunnerDetails>();
		pst = con.prepareStatement("select user.firstname,user.lastname,runner.gender, runner.dateofbirth,country.countryname, charity.charityname,registration.sponsorshiptarget, racekitoption.racekitoption , event.eventname,registrationstatus.registrationstatusid from user,runner,registration,country,charity,racekitoption,registrationstatus,event,registrationevent where runner.email = '"+email+"' and user.email = runner.email and registration.charityid = charity.charityid and runner.countrycode = country.countrycode and  registration. registrationstatusid =  registrationstatus.registrationstatusid and runner.runnerid = registration.runnerid and registration.racekitoptionid = racekitoption.racekitoptionid and registrationevent.eventid = event.eventid and registrationevent.registrationid = registration.registrationid;");
		rs = pst.executeQuery();
		while(rs.next()){
			String firstname = rs.getString(1);
		    String lastname = rs.getString(2);
		    String gender = rs.getString(3);
		    String DateOfBirth = rs.getString(4);
			String Country = rs.getString(5);
			String Charity = rs.getString(6);
			String Target = rs.getString(7);
			String RaceKitOption = rs.getString(8);
			String event = rs.getString(9);
			int status = rs.getInt(10);
		    //System.out.println(firstname);
		    RunnerDetails rd = new RunnerDetails(firstname,lastname,gender,DateOfBirth, Country,Charity,Target,RaceKitOption,event,status);
		    rm.add(rd);
		}
		return rm;
	}
	
	/*public ArrayList<RunnerDetails> RunnerDetails(String status, String raceevent, String sortby) throws SQLException, ClassNotFoundException, IOException {
		ArrayList<RunnerDetails> RunnerDetails = new ArrayList<RunnerDetails>();
	    pst = con.prepareStatement("select ");
	    rs = pst.executeQuery();			   	    
	    while(rs.next()) {
	    	 
	    	 String firstname = rs.getString(1);
	    	 String lastname = rs.getString(2);
	    	 String  email= rs.getString(2);
	    	 String status1 = rs.getString(2);
	    	 RunnerDetails rb = new RunnerDetails(firstname,lastname,email,status1);
		   	     RunnerDetails.add(rb);


	   }
	    return RunnerDetails;
	}
	public List getAllRunner() {
	    List runner = new ArrayList();
	    try {
	    	String sql = "select FirstName,LastName,BibNumber,CountryCode from runner r, user u, registration re,registrationevent ree where ree.`RegistrationId`=re.`RegistrationId` AND re.`RunnerId`=r.`RunnerId` AND u.`Email`=r.`Email`";
	        st=con.createStatement();
	        ResultSet rs = st.executeQuery(sql);
	        
	        System.out.println("yesR");
	        while (rs.next()) {
	            runnerBean runnerbean = new runnerBean();
	            runnerbean.setRunnerId(null);
	           runnerbean.setBibNumber(rs.getString("BibNumber"));
	           runnerbean.setCountryCode(rs.getString("CountryCode"));
	           runnerbean.setFirstName(rs.getString("FirstName"));
	           runnerbean.setLastName(rs.getString("LastName"));
	          
	            runner.add(runnerbean);
	        }
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return runner;
	}*/
	
}
