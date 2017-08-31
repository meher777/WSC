package com.Controller;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ConnectionDAO;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

/**
 * Servlet implementation class FileUpload
 */
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request,response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
		String x = request.getContentType();
		System.out.println(x);
		String csvFile = "/C:/Users/meher/Desktop/file.csv";
	        BufferedReader br = null;
	        String line = "";
	        String cvsSplitBy = ",";

	        try {
	        	ConnectionDAO cdao = new ConnectionDAO();
	        	Connection con;
	        	con = cdao.getConnection();
	        	PreparedStatement pst;
	        	
	            br = new BufferedReader(new FileReader(csvFile));
	            pst = con.prepareStatement("insert into volunteer values (?,?,?,?,?)");
	            while ((line = br.readLine()) != null) {

	                String[] words = line.split(cvsSplitBy);
	                if(words.length == 5) {
						int count = 1;
						for(String word:words) {
							pst.setString(count++, word);
						}
						
							int val = pst.executeUpdate();
						if(val > 0){
							
						}
	                
	            }

	            }
	            response.sendRedirect("ImportVolunteers.jsp");
	        }catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally {
	            if (br != null) {
	                try {
	                    br.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }

	    }
	}


