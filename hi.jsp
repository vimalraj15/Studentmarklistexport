<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  text-align :center;
}

button {
  background-color: #04AA6D;
  color:i white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  text-align :center;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.mbtn {
  width: 100px;
  text-align: center;
  padding: 10px 15px;
  background-color:  #307D7E;
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

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}


</style>
<title>Welcome</title>
</head>
<body>
<h2>Welcome</h2>

<form action="/login-user" method="post">
   <div class="imgcontainer">
    <img src="one.jpg" alt="Avatar" class="avatar">
  </div>
    <div class="container">    
    ${vimal}
    </div>
  

  <div class="container">
     <h4>Student MarkList Details and Export the Report in Excel File</h4>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>
</div>
<div class="container">
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
       </div> 
  
  <div class="container" style="background-color:#f1f1f1">
    <button type="submit" class="mbtn">Login</button>
    </div>
 
</form>

</body>
</html>