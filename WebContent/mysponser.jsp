<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.DAO.*"%>
   <%@page import="com.Pojo.*"%>
    <%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" media="all">
<link  href="css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/countdown.js"></script>
<title>List of Charity  |  Marathon 2017</title>
</head>
<body>
<%String email = (String)session.getAttribute("email"); %>
<center>
<h1>My Sponsorship</h1>
<p>
This shows all the sponsorship you have received for Marathon Skills 2017
</p>
<div class="container">
<div class="row">
<div class="col-md-6 ">
<center>
<%
RunnerDAO dao = new RunnerDAO();
ArrayList<Sponsor> list = dao. GetAllSponsorDetails(email);
ListIterator<Sponsor> lt = list.listIterator();
String path="",desc="",name="";
		while(lt.hasNext()){
			Sponsor s = lt.next();
			path = "\"img/"+s.getLogo();
			name = s.getCharity();
			System.out.println(name);
			desc = s.getDescription();
		}
System.out.println(desc+name+path);
%>

<h2><%=name %></h2>
<img src=<%=path %> class="img-circle img-responsive img-size" ><br>
<p><%=desc %></p>
</center>
</div>
<div class="col-md-6 ">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Sponsor</th>
        <th>Amount</th>
      </tr>
    </thead>
    <tbody>
   <%
   float ta=0;
   while(lt.hasNext()){
	   Sponsor s = lt.next();
	   String am=s.getAmount();
	   ta+=Float.parseFloat(am);
   %>
 <tr>
 <td>
 <%=s.getSponsorship()%>
 </td>
 <td>$<%=am %></td>
  </tr>

<%
}%>
     
      </tbody>
      </table>
      <div class="pull-right">
      <h5>Total&nbsp;$<%=ta %></h5>
      </div>
</div>
</div>
</div>

</center>

</body>
</html>