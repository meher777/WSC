<%@page import = "com.DAO.*"%>
<%@page import = "com.Pojo.*"%>
<%@page import = "java.util.*"%>
<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.ArrayList" %>
<%
String email = (String)session.getAttribute("email");
String gender = (String)session.getAttribute("gender");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page = "Header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel = "stylesheet" media = "all">
<script type="text/javascript" src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>

<link href = "css/style.css" rel = "stylesheet"> 
</head>
<body>
<h1><center>My Race Results</center></h1>
<h1><center>This is the list of all the past events on Marathon Skills.</center></h1>
<br>
<center><h2><b>Gender : </b> <%=gender%></h2></center>
<div class = "container">
<table id = "example" class="table table-bordered">
<thead>
<tr>
<th>Marathon</th>
<th>Event </th>
<th>Time </th>
<th>Category Rank</th>
<th>Overall Rank</th>
</tr>
</thead>
<%
try{

	RunnerDAO rdao = new RunnerDAO();
	ArrayList<Runner> list = rdao.listResults(email);
    ListIterator<Runner> lt = list.listIterator();
   
while(lt.hasNext()){
	Runner rb = lt.next();
	out.print("<tr>");
	out.print("<td>" + rb.getMarathon() + "</td>");
    out.print("<td>" + rb.getEvent() +"</td>");
    int time = rb.getTime() / 3600 ;
    int min = (rb.getTime()-time*3600)/60;
	out.print("<td>" + time+"h"+" "+min+ "m"+ "</td>");
}

}catch(Exception ex){
	ex.printStackTrace();
}
%>
</table>
<center><a href ="mysponser.jsp"><button class = "btn btn-default btn-block ">View My Race Result</button></a></center>
</div>
</body>
</html>