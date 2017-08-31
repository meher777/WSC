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
<title>Marathon 2017 | WSC Login </title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<center>
<h1>LOGIN FORM</h1>
<h4>Please log in to the system using your email address and password</h4><br><br></center>
<form action = "loginServlet" method = "post" class="col-md-4 col-md-offset-4">
<div class= "form-group">
 <label for = "email" class = "control-label">Email:</label>
	<input type ="email" class ="form-control" name ="email" placeholder ="Enter your email address" required>
 </div>
<div class= "form-group">
 <label for = "pass" class = "control-label">Password:</label>
	<input type ="password" class ="form-control" name ="password" placeholder ="Enter your password" required>
 </div>

      <button type="submit" class="btn btn-default">Login</button>
		&nbsp;&nbsp;
      <button type="reset" class="btn btn-default">Cancel</button>
</form>

</body>
</html>