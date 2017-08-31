<%@page import="com.Pojo.*"%>
<%@page import="com.DAO.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
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

<link href = "css/style.css" rel = "stylesheet"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
String email = request.getParameter("email");
RunnerDAO rdao = new RunnerDAO();
ArrayList<RunnerDetails> rd = rdao.getRunnerDetails(email);
ListIterator<RunnerDetails> list = rd.listIterator();

try {
while(list.hasNext()) {
	RunnerDetails r = list.next();
%>
<center> <h2> Manage A Runner</h2></center>
<form action = "EditRunner" method = "post">

 <div class = "col-sm-6">
 <b>Email:</b> <%=email %><br>
  <b>First Name: </b><%=r.getFirstName() %> <br>
  <b>Last Name:</b> <%=r.getLastname() %><br>
  <b>Gender:</b> <%=r.getGender() %><br>
  <b>Date of Birth:</b> <%=r.getDateOfBirth() %><br>
  <b>Country:</b> <%=r.getCountry()%><br>
  <b>Charity: </b><%=r.getCharity() %><br>
  <b>Target to raise:</b> $ <%=r.getTarget()%><br>
  <b>Race Kit Option:</b> <%=r.getRaceKitOption() %><br>
  <b>Race Events:</b> <%=r.getEvent() %><br>
 </div>
 
</form>

<div class = "col-sm-6">
<center>Registration Status</center>
<br><br>
<div class = "col-md-offset-4 pad">

<% 
int i;
int x = r.getStatus();
System.out.println(x);
for(i = 1; i <= x; i++ ){ %>
<img src = "img/tick-icon.png" height = "50 px" width = "50px"><br><br>

<%}for(i = x ; i <4 ;i++){ %>
<img src = "img/cross-icon.png"height = "50 px" width = "50px"><br><br>
<%} %>
</div>
</div>

 

 <div class = "relative">
 <form action ="EditRunner.jsp">
 <input type = "hidden" name = "first" value = <%=r.getFirstName() %>>
 <input type = "hidden" name = "last" value = <%=r.getLastname() %>>
 <input type = "hidden" name = "gender" value = <%=r.getGender() %> >
 <input type = "hidden" name = "dob" value = <%=r.getDateOfBirth() %>>
 <input type = "hidden" name = "country" value = <%=r.getCountry() %>>
 <input type = "hidden" name = "status" value = <%=r.getStatus() %>>
 
 
 
 <button class = "btn btn-default">Edit Details</button>
</form>
<form action ="PreviewCertificate.jsp">
 <input type = "hidden" name = "first" value = <%=r.getFirstName() %>>
 <input type = "hidden" name = "last" value = <%=r.getLastname() %>>
 <input type = "hidden" name = "country" value = <%=r.getCountry() %>>
 <input type ="hidden" name= "charity"  value=<%=r.getCharity() %>>
 <input type ="hidden" name= "target" value=<%=r.getTarget()%>>
 <input type ="hidden" name= "raceevent" value= <%=r.getEvent() %>>
 <input type = "hidden" name = "status" value = <%=r.getStatus() %>>
 
 <button class = "btn btn-default">Preview Certificate</button>
</form>
 </div>            

      <%	
} }
catch (Exception e){}
%>   
</body>
</html>