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
</style>
<title>Student</title>
</head>

<body>

<h3>Student Mark Form</h3>

<div class="container">
  <form action="/action" method="post">
    <label for="fname">Student Name</label>
    <input type="text" id="name" name="name" placeholder="Student name.." required>

    <label for="register">Student Registration number</label>
    <input type="text" id="registration" name="registration" placeholder="registration number" required>

         <label for="english">Enter English mark</label>
    <input type="text" id="english" name="english" placeholder="english mark" required>
    
          <label for="tamil">Enter Tamil mark</label>
    <input type="text" id="tamil" name="tamil" placeholder="tamil mark" required>
  
  <label for="science">Enter Science mark</label>
    <input type="text" id="science" name="science" placeholder="science mark" required>
    
    <label for="social">Enter Social mark</label>
    <input type="text" id="social" name="social" placeholder="social mark" required>

    <label for="maths">Enter Maths mark</label>
    <input type="text" id="maths" name="maths" placeholder="maths mark" required>


  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>