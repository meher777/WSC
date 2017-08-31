<%@page import="com.Pojo.*"%>
<%@page import="com.DAO.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	ResultSet resultset = null;
%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel = "stylesheet" media = "all">
<script type="text/javascript" src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>

<link href="css/style.css" rel="stylesheet">
</head>
<%
	ConnectionDAO cdao = new ConnectionDAO();
	Connection con;
	con = cdao.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	ps = con.prepareStatement("Select * from registrationstatus");
	rs = ps.executeQuery();
	int i = 0;
%>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<center>Runner Management</center>
	<br>
	<br>
	<form action="">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="offset-2">Sort and Filter</div>
					<div class="form-group">
						<label for="status">Status:</label> <select name="status"
							id="status" class="form-control">
							<option value ="">Select</option>
							<%
								while (rs.next()) {
							%>
							<option value=<%=rs.getString(1)%>><%=rs.getString(2)%></option>
							<%
								}
							%>
						</select>
					</div>
					<br> <br>
					<%
						PreparedStatement pst;
						ResultSet rst;
						pst = con.prepareStatement("Select * from EventType");
						rst = pst.executeQuery();
					%>
					<div class="form-group">
						<label for="race">Race Event :</label> <select name="race"
							id="race" class="form-control">
							<option value ="">Select</option>
							<%
								while (rst.next()) {
							%>
							<option value=<%=rst.getString(1)%>><%=rst.getString(2)%></option>
							<%
								}
							%>
						</select>
					</div>
					<button class="btn btn-default btn-block">Submit</button>
					</div>

			</div>
		</div>
</form>
					 <div class = "col-md-6">
<center>Export</center>
<form action = "DownloadCSV" method = "post">
<% String regstatus = request.getParameter("status");
String race = request.getParameter("race");%>
<input type = "hidden" name = "race" value = <%=race %>>
<input type = "hidden" name = "status" value = <%=regstatus %>>
<button type = "submit" class = "btn btn-default">Download</button><br><br>
</form>
<br><br>
<button class = "btn btn-default btn-block">Email Address List</button>

</div> 
				
		
		<%  i = 1; %>
	
	<% if( i == 1){ %>
	<div class="row">
		<table>
		<thead>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Registration Status</th>
</tr>
</thead>
			<%
				String status = request.getParameter("status");
			    String raceevent = request.getParameter("race");
				RunnerDAO rdao = new RunnerDAO();
				ArrayList<RManagement> rm = rdao.RunnerManagement(status, raceevent);
				ListIterator<RManagement> lt = rm.listIterator();
				try {
					while (lt.hasNext()) {
						RManagement rb = lt.next();
						//System.out.println(rb.getEmail());
						out.print("<tr>");
						out.print("<td>" + rb.getFirstname() + "</td>");
						out.print("<td>" + rb.getLastname() + "</td>");
						out.println("<td>" + rb.getEmail() + "</td>");
						out.println("<td>" + rb.getRegstatus() + "</td>");
			%>
			<td>
			<form action="EditRunnerDetails.jsp" method="post">
				<input type="hidden" value=<%=rb.getEmail() %> name="email"/>
				<button type = "submit" class="btn btn-default btn-block">Edit</button>
			</form>
			</td>
			<%
				}
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			%>
		</table>
	</div>
	<%} %>
</body>
</html>