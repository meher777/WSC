package com.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request,response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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

		String email = request.getParameter("email");
			String password = request.getParameter("password");
			AdminDAO dao  = new AdminDAO();
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			//System.out.println(email);
			boolean result = dao.login(email,password);
			if(result){
				
				String role = dao.getRole(email);
				String gender = dao.getGender(email);
				session.setAttribute("gender", gender);
				if(role.equals( "Administrator")){
					response.sendRedirect("Administrator.jsp");
				}
				else if(role.equals("Runner")){
					response.sendRedirect("Runner.jsp");
				}
				else {
					response.sendRedirect("Cordinator.jsp");
				}
					
				
			}
	}

}
