<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
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
<jsp:include page="header-inner.jsp"></jsp:include>

<center>
<h1>Runner Menu</h1><br><br>
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-1 pad">
<a href="reg-event.jsp"><button class="btn btn-default btn-block btn-h" >Register for an event</button></a>
</div>
<div class="col-md-4 col-md-offset-2 pad">
<a href="MyRaceResults.jsp"><button class="btn btn-default btn-block btn-h">My race results</button></a>
</div>
<div class="col-md-4 col-md-offset-1 pad">
<a href="edit-profile.jsp"><button class="btn btn-default btn-block btn-h">Edit your profile</button></a>
</div>
<div class="col-md-4 col-md-offset-2 pad">
<a href="mysponser.jsp"><button class="btn btn-default btn-block btn-h">My sponsorship</button></a>
</div>
<div class="col-md-4 col-md-offset-1 pad">
<a href="#"><button class="btn btn-default btn-block btn-h">Contact Information</button></a>
</div>
</div>
</div>

</center>

</body>
</html>