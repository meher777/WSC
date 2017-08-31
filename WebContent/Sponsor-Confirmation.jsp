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
<script type="text/javascript" src="js/countdown.js"></script>
<title>Marathon 2017 | WSC </title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<% String name=request.getParameter("runner");
   String amt=request.getParameter("amount");	
%>
<center>
<h1>Thank you for your sponsorship!</h1>
<h3> Thank you for sponsoring a runner in Marathon Skills 2017!
<br>
Your donation will help out their chosen charity.
</h3>
<h2><%=name %></h2>
<h1>Save the Cats Fund</h1>
<h1 style="font-size:100px; color:grey;"><%=amt %></h1>
<a href="index.jsp"><button class="btn btn-small btn-default ">Back</button></a>
</center>

</body>
</html>