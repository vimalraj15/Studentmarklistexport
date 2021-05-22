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
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}




body {
	font-family: 'Josefin Sans', sans-serif;
}
html{
  scroll-behavior: smooth;
}


ul {

    background: #4b4276;
    padding: 30px 0px;
	position: fixed;
	top: 0;
	left: 0;
	margin-left: 0px;
	width: 240px;
	height: 100vh;
	overflow-y: auto;
}

ul li {
	height: 65px;
	outline: none;
}

ul li a {
	display: block;
	height: 100%;
	width: 100%;
	line-height: 70px;
	font-size: 20px;
	color: white;
	padding-left: 10%;
	background: #1e1e1e;
	border-top: 1px solid rgba(255, 255, 255, .1);
	border-bottom: 1px solid black;
	border-left: 5px solid transparent;

}


section{
  margin-left: 260px;

}
.sec1{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec2{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec3{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec4{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec5{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec6{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec7{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}


h1{
  font-size: 40px;
  padding: 15px 20px;
}
p{
  padding: 0 20px 10px 20px;
  text-align: justify;
   font-style: oblique;

}

cm {
  white-space: pre;
}
c1 {
  white-space: pre;
}
ul li:hover{
  background-color: #594f8d;
}
ul li a{
  color: #bdb8d7;
  display: block;
}
ul li a .fas{
  width: 25px;
}
 ul li:hover a{
  color: #fff;
}
h2{
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  
}


.column {
  float: left;
  width: 50%;
  padding: 0 10px;
  word-spacing =30%;
}

.column2
{
  float: left;
  width: 100%;
  padding: 0 10px;
}
/* Remove extra left and right margins, due to padding */
.row {margin: 0 +50px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
  
}
.loginbtn {
  width: 1;
  text-align: center;
  padding: 10px 18px;
  background-color: #6495ED;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.5);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
input[type=text],select, input[type=password] {
  width: 100%;
  padding: 15px;
    margin-top: 6px;
  margin-bottom: 16px;
  display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
  background: #ddd;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus,select, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for all buttons */
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

}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}



.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: blue;
  text-align :center;
  font-size: 150%;
}

.monospace {
  font-family: "Lucida Console", Courier, monospace;
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  font-size: 30px;
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
  background-color: #6495ed;
  color: white;
}
#example2 {
  width: 200px;
  padding: 10px;  
  border: 5px solid skyblue;
  align-content: center
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
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
  background-color: #6495ED;
  color: white;
}
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
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 20%;
}

.container {
  padding: 16px;
  text-align: center;
}
</style>
<title>Welcome</title>
</head>


<body>





<div class="center">
     
</div>

  <form>        
  <button type ="submit" formaction="/" class="logout"style ="float:right">log out</button>
</form>
  <br>
  <br>
 
 <h1 id="about">Student MarkList and Export </h1>
 <br>
 <p>&nbsp;</p> 
  <hr>
 <br>
 
<div class="row">
   <div class="column">
    <div class="card">
		<h3>Student</h3>        
     <form action="/form">
         <button type="submit" class="loginbtn">Create</button>
    </form>
       <b>Go here for Entering Student Mark Details</b>
    </div>
  </div>

   <div class="column">
    <div class="card">

		<h3>Student Details</h3>        
     <form action="/a">
         <button type="submit" class="loginbtn">Show</button>
    </form>
       <b>Go here for Student Mark Details and Export</b>
    </div>
  </div>		
</div>  

    

</body>
</html>