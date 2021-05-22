<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>Patient Form</title>
</head>
<body>

<h3>Patient Contact Form</h3>

<div class="container">
  <form action="/action" method="post">
    <label for="fname">Patient Name</label>
    <input type="text" id="fname" name="name" placeholder=" name.." required>

    <label for="gender">Gender</label>
    <select id="gender" name="gender" required>
      <option value="male">male</option>
      <option value="female">female</option>
    </select>

<label for="hname">Hospital Name</label>
    <input type="text" id="hname" name="hospital" placeholder="hospital.." required>
    
    <label for="address">Address</label>
    
    <textarea id="address" name="addresss" placeholder="Provide Address" style="height:200px" required></textarea>

    <label for="status">Status</label>
    <select id="status" name="status" required>
      <option value="treatment">treatment</option>
      <option value="death">death</option>
      <option value="recoverd">recoverd</option>
    </select>




    <input type="submit" value="Submit">
    
  </form>
</div>
</body>
</html>