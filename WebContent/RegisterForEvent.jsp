<%@page import="com.DAO.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel = "stylesheet"> 
<link href = "css/style.css" rel = "stylesheet"> 
</head>
<%
   ConnectionDAO cdao = new ConnectionDAO();
   Connection con =  cdao.getConnection();
   PreparedStatement pst;
   ResultSet rs;
   pst = con.prepareStatement("select charityname from charity");
   rs = pst.executeQuery();
  
%>
<body>
<script>
var inputs = document.getElementsByClassName('sum'),
total  = document.getElementById('payment-total');
total1 = document.getElementById('payment-billed');

for (var i=0; i < inputs.length; i++) {
inputs[i].onchange = function() {
    var add = this.value * (this.checked ? 1 : -1);
    total.innerHTML = parseFloat(total.innerHTML) + add
    total1.innerHTML = parseFloat(total1.innerHTML) + add
}}
</script>
<h1><center>Register for Event</center></h1>
<h2><center>Please fill out the following information to register</center></h2>
<div class="container">
<div class =" col-md-7">
<h2>Competition Events</h2>
<br>
<div class = "checkbox">
<label><input type = "checkbox" id = "mar-1" value ="145">42 km full Marathon($145)</label>
</div>
<div class = "checkbox">
<label><input type = "checkbox" id="mar-2" value ="75">21 km full Marathon($75)</label>
</div>
<div class = "checkbox">
<label><input type = "checkbox" id="mar-3" value ="20">5 km full Marathon($20)</label>
</div>
<h2>SponsorShip Details</h2>
<br>
<div class="form-group">
                <label class="control-label" >Batch: </label>
                
                <select class="form-control"   name="batch" onchange= "textpop(this.value)" required>
					<option value= "">Select</option>
                   <%  while(rs.next()){ %>
                   <option value = <%=rs.getString(1)%>><%= rs.getString(1)%></option>
                   <% } %>
                   <option value = "Other"> Other </option>
                   <%
                   System.out.println("hello how are you?");%>
                </select> 
                <div class = "help-block with-errors"></div>
                <input type = "text" id = "batch" name="batch-other" style="visibility:hidden;"/>
                 </div> 
                
                 <div class="form-group">
    <label class="control-label" for="pwd">Target To raise:</label>
      <input type="text" class="form-control" name="fund" id="pwd" placeholder="Enter Fund" style="width:50px;">
    
  </div>             
            </div>
<div class = "col-md-5">
<h2>Racekit Options</h2>
 <input type="radio" name="gender" id = "radio-1" value="male"><b>Option A($0)</b> Runner's bib + RFRD bracelet<br>
 <input type="radio" name="gender" id = "radio-2" value="female"> <b>Option A($0)</b> Runner's bib + RFRD bracelet<br>
 <input type="radio" name="gender" id = "radio-3" value="male"><b>Option A($0)</b> Runner's bib + RFRD bracelet<br>
  <br>
  <br>
  
</div>
</div>
</body>
</html>