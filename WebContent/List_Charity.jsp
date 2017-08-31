
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Pojo.CharityBean"%>
<%@ page import="com.DAO.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css" rel="stylesheet" media="all">
<link  href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="Style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/countdown.js"></script>
<title>List of Charity  |  Marathon 2017</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
CharityDAO dao = new CharityDAO();
List<CharityBean> charityList = dao.getAllCharity();
 %>


<div class="container">
<div class="text-center">
<h2>List of Charities</h2>
<p>List of all charities that are being supported through Marathon Skills 2017. Thank you for your support.
</p>

</div>
</div>
<br>
<div class="container">
<%for(CharityBean charity : charityList)
{
String path="\"img/charity_logo/" + charity.getCharityLogo()+"\"";
System.out.println(path);
%>
<div class="row">
<div class="col-md-2 col-sm-4">
<img src=<%=path %> class="img-circle img-responsive img-size" >
</div>
<div class="col-md-10 col-sm-8">
<h3> <%=charity.getCharityName() %></h3>
<p><%=charity.getCharityDescription() %></p>
</div>
</div>
<hr>
<%} %>
</div>


</body>
</html>