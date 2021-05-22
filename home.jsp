
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> inserting</h3>

${name}
${p}

<form action="/vimalraj/h">
name:
<input type="text" placeholder="Enter name" name="name" required>
<br>
dept:
<input type="text" placeholder="Enter dept" name="dept" required>
<input type="submit" value="Submit">
</form>



<h3>display <h3>
<form action="/vimalraj/getall">

<input type="submit">
</form>
<br>
<br>





<h3>display <h3>
<form action="/get" method="post">
<input type="text" placeholder="Enter dept" name="dept" required>
<input type="submit" value="get">
</form>





</body>
</html>