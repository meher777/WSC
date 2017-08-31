<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href= "bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel = "stylesheet" media = "all">
<script type = "text/javascript" src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
</head>
<body>
<center>

<h2>Import Volunteers</h2>
<br><br>
<h3>CSV list of volunteers : </h3>
<form action = "FileUpload" enctype ="multipart/form-data">
<input type = "file" name = "vol" id = "vol"><br><br>
 <button type="submit" class="btn btn-default" >Upload File</button>
 </form>
</center>
</body>
</html>