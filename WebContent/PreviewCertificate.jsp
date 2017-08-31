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
<link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css" rel="stylesheet" media="all">
<link  href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="Style.css" rel="stylesheet" media="all" ><script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/countdown.js"></script>
</head>
<%
String email = (String)session.getAttribute("email");
System.out.println(email);
String firstname= request.getParameter("first");
String lastname= request.getParameter("last");
String country= request.getParameter("country");
String amount= request.getParameter("target");
String charity= request.getParameter("charity");
String raceevent = request.getParameter("raceevent");
int status = Integer.parseInt(request.getParameter("status"));

RunnerDAO rdao = new RunnerDAO();
String path = rdao.getPath(email);

String[] ar = path.split(" ");
%>
<% if(path.equals("You cannot view your certificate")){%>
<h1>You cannot preview your certificate </h1> 
<%} else {%>

<center>
<h3>Congratulations <%=firstname%> <%=lastname%> for running in <%=raceevent%>.</h3>
<br><br>
<h2><b>Certificate of Participation</b></h2>
<br><h3>in</h3>
<br>
<h2>  <%=ar[0]%> <%=ar[1]%> <%=ar[2]%> </h2>
<br>
<%
int i;
for( i = 3 ;i < ar.length ;i++) {%>
<h2 style = "display:inline"><%=ar[i]%></h2>
<%} %>
<br><br>
<h4>You also raised a $ <%=amount%> for <%=charity%>!</h4>
</center>
<%} %>
<body>
<center><h1></h1></center>
</body>
</html>