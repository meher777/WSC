<%@page import="com.Pojo.*"%>
<%@page import="com.DAO.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<%
String email = (String)session.getAttribute("email");
System.out.println(email);
String firstname = request.getParameter("first");
String last = request.getParameter("last");
String gender = request.getParameter("gender");
String country = request.getParameter("country");
String status = request.getParameter("status");




String dob = request.getParameter("dob");
//String firstname = request.getParameter("first");

%>
<body onload = "myFucntion()">
<script>
function myFunction() {
	document.getElementById("gender").value = '<%=gender%>';
	document.getElementById("status").value.selected = '<%=status%>';
	
	}
</script>
	<center>Edit Runner Details</center>
	<div class="col-md-6">
	<div class="form-group">
			<label for="First name">Email : </label> <input type="text"
				value=<%=email %> name="email" disabled>
		</div>
		<div class="form-group">
			<label for="First name">First Name : </label> <input type="text"
				value=<%=firstname %> name="firstname">
		</div>
		<div class="form-group">
			<label for="last name">Last Name : </label> <input type="text"
				value=<%=last %> name="last">
		</div>
		<div class="form-group">
			<label for="country name">Country : </label> <input type="text"
				value=<%=country %> name="country">
		</div>
		
		<div class="col-md-6">
		<div class="form-group">
			<label for="Gender">Gender : </label>
			 <select class="form-control" name = "gender" id = "gender"  >
				
				<option value= "F"> Female </option>
				<option value= "M">  Male</option>
				
			</select>
	</div>
	</div>
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
	<div class="col-md-6">
		<div class="form-group">
			<label for="First name">Registration Status : </label>
			 <select class="form-control"  name="status" id = "status" >
				<%while (rs.next()) {
					if(rs.getString(1).equals(status)){%>
			        <option value=<%=rs.getString(1)%> selected><%=rs.getString(2)%></option>
			       <%}  else{%>
			        <option value=<%=rs.getString(1)%>><%=rs.getString(2)%></option>
				<%
			       }}
							%>
				
				      

			</select> 
		</div>
	</div>
	</div>
</body>
</html>