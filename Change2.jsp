<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
table {
  border-collapse: collapse;
   border: 1px solid black;
  width: 100%;
}

th, td {
  text-align: left;
  
  padding: 8px;
   border-bottom: 1px solid #ddd;
}
tr:nth-child(odd){background-color: #f2f2f2}
tr:hover {background-color:#f5f5f5;}


th {
  background-color: #808000	;
  color: white;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
.logout {
  float: left;
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.mbtn {
  width: auto;
  text-align: center;
  padding: 10px 15px;
  background-color:  #307D7E;
}


</style>
<title>Form</title>
</head>

<body>
<div class="center">
     
</div>

  <form>        
  <button type ="submit" formaction="/" class="logout"style ="float:right">log out</button>
</form>
  <br>
  <br>
<table >
<tr>
   <th>Registration number</th>
   <th>Student name</th>
   <th>English</th>
   <th>Tamil</th>
   <th>Science</th>
   <th>Social</th>
   <th>Maths</th>
   <th>Total</th>
   <th>Average</th>
</tr>
	<c:forEach var="lang" items="${vimal}">
     <tr>   		
				<tbody>
				<tr>
				<td>
	<c:out value="${lang.registration}"/>		
				</td>
				<td>
	<c:out value="${lang.name}"/>		
				</td>
				<td>
	<c:out value="${lang.english}"/>		
				</td>
				<td>
	<c:out value="${lang.tamil}"/>		
				</td>
				<td>
	<c:out value="${lang.science}"/>		
				</td>
				<td>
	<c:out value="${lang.social}"/>		
				</td>
				<td>
				${lang.maths}
		
				</td>
				<td>
  <c:out value="${lang.total}"/>		
				</td>
				<td>
	<c:out value="${lang.average}"/>		
				</td>
				</tr>
				</tbody>
				</c:forEach>
</table>

<form action ="/b">
    <label for="uname"><b>Export Student MarksList</b></label>
     <button type="submit" class="mbtn">Export</button>     
    </form>  
</body>
</html>