<%@page import="com.DAO.*"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css" rel="stylesheet" media="all">
<link  href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="Style.css" rel="stylesheet" media="all" >
<link href="http://cdnjs.cloudflare.com/ajax/libs/select2/3.4.8/select2.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<%
ConnectionDAO cdao = new ConnectionDAO();
Connection con =  cdao.getConnection();
PreparedStatement pst;
ResultSet rs;
pst = con.prepareStatement("select FirstName,LastName,BibNumber,CountryCode from runner r, user u, registration re,registrationevent ree where ree.`RegistrationId`=re.`RegistrationId` AND re.`RunnerId`=r.`RunnerId` AND u.`Email`=r.`Email`");
rs = pst.executeQuery();
%>
<body>
<div class="container">
<div class="text-center">
<h2>Sponsor a runner</h2>
<p>Please choose the runner you would like to sponser and the amount of money you want to sponser.<br> Thank you for your support for the runner and their charities. 
</p>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-md-7">
 <h2>Sponsorship Details</h2>
 <form method="GET" action="sponser_confirmation.jsp"> 
 <div class= "form-group">
 <label for = "name" class = "control-label">Your Name:</label>
	<input type ="text" class ="form-control" name ="name" placeholder ="Enter your Name">
 </div>
 
 <div class="form-group">
  <label for="runner">Choose Runner:</label>
  <select name="runner" id="runner" class="form-control" >
  <%  while(rs.next()){ %>
                   <option value = <%=rs.getString(1)%>><%= rs.getString(1)%>/option>
                   <% } %>
  </select>
</div>
 
 <div class= "form-group">
 <label for = "name" class = "control-label">Name on Card:</label>
	<input type ="text" class ="form-control" name ="name" placeholder ="Enter your Name" required>
 </div>
 
 <div class= "form-group">
 <label for = "name" class = "control-label">Credit Card # :</label>
	<input type ="text" class ="form-control" name ="name"  placeholder ="Enter your Credit Card" required>
 </div>
 
 
 <div class= "form-group">
 <label for = "name" class = "control-label">Expiry Date:</label>
 <input type="text" class="form-control-own"  name="month"  placeholder="01">
 <input type="text"  class="form-control-own" name="year"  placeholder="2020" >
</div>
 <div class= "form-group">
 <label for = "cvv" class = "control-label">CVV:</label>
 <input type="text" class="form-control-own"  name="month"  placeholder="01">
</div>
</form>
</div>

<div class="col-md-5">
 <center><h2>Charity</h2>
 <h4>Save the cats Fund &nbsp; &nbsp; &nbsp;&nbsp;<i class="glyphicon glyphicon-info-sign" style="color:orange"></i> </h4>
 <h3>Amount to donate</h3>
 <h1 style="font-size:100px; color:grey;">$<span id="cost">50</span></h1>
  <div class= "form-group">
<input type="button" class="btn btn-sm btn-default" value="-" style="height: 34px;" onclick="minusAmount()">
 <input type="number" class="form-control-own"  name="amount" id="amt" value="50">
 <input type="button" class="btn btn-sm btn-default" value="+" style="height: 34px;" onclick="addAmount()">
</div>
<br>
<input type="submit" class="btn btn-sm btn-default" value="Pay now">&nbsp;&nbsp;&nbsp;<input type="reset" class="btn btn-sm btn-default" value="Cancel">
 </center>

</div>
</div>
</div>
<br><br><br>

<script>
function minusAmount()
{
 var amt=document.getElementById("amt").value;
 document.getElementById("amt").value = amt-10;
 document.getElementById("cost").innerHTML=amt-10;
}
function addAmount()
{
 var amt=document.getElementById("amt").value;
 amt2=parseInt(amt);
 document.getElementById("amt").value = amt2+10;
 document.getElementById("cost").innerHTML=amt2+10;
}
</script>
</body>
</html>