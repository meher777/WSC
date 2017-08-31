<%@page import = "com.DAO.*" %>
<%@page import = "com.Pojo.*" %>
<%@page import = "java.util.*" %>
<%@page import = "java.sql.*" %>
<%ResultSet resultset = null;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel = "stylesheet" media = "all">
<script type="text/javascript" src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
</head>
<body>
<center><h1>Volunteer Management</h1></center>
<br><br>
<div class = "container">
<div class = "row">
<div class = "col-md-6">
<center>
<h3> Sort and Filter</h3><br>
<form action="">
<label for = "sort">Sort By:&nbsp</label>
<select name = "sortby" id = "sortby" class = "form-group">
<option value ="firstname">FirstName</option>
<option value ="lastname">LastName</option>
<option value ="countryname">Country</option>
<option value ="gender">Gender</option>
</select><br>
<button type = "submit" class = "btn btn-default">Submit</button>
</form>
</center>
</div>
<div class = "col-md-6">
<center>
<h3>Import Volunteer</h3><br>
<a href = "ImportVolunteers.jsp"><button  class = "btn btn-default ">Import Volunteers</button></a>
</center></div></div>
<% String status = request.getParameter("sortby"); 
System.out.println(status);%>
<center>
<table class = "table-bordered">
<thead>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Country</th>
<th>Gender</th>
</tr>
</thead>

<%

VolunteerDAO vdao = new VolunteerDAO();
ArrayList<VolDetails> v=vdao.getDetails(status);
ListIterator<VolDetails> list = v.listIterator(); 
while(list.hasNext()){
	VolDetails vd = list.next();
	out.print("<tr>");
	out.print("<td>"+vd.getFirstname()+"</td>");
	out.print("<td>"+vd.getLastname()+"</td>");
	out.print("<td>"+vd.getCountry()+"</td>");
	out.print("<td>"+vd.getGender()+"</td>");
}
%>

</table>
</center>
</div>
</body>
</html>