<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>User Registration Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css"/>
</head>
<main class="container">
<body>
<form action= "/coffeeshop-summary" method="post">
<h1>Welcome to The Coffee Shop!</h1>
<h2>Create Customer Account</h2>
<h1><img src="/images/images.jpeg"/></h1>
<p>Please fill out the form to register your profile.</p>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="First Name" name="firstname" required minlength = "2" maxlength = "10"/>
      <input type="text" class="form-control" placeholder="Email" name="email" required/>
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Last Name" name="lastname" required minlength = "2" maxlength = "10"/>
      <input type="text" class="form-control" placeholder="Phone Number" name="phonenumber" required pattern="[0-9}{3}{0-9}{3}[0-9}{4}"/>
      <input type="text" class="form-control" placeholder="Password" name="password" required/>
      <button type="Register My Profile" class="btn btn-primary mb-2">Register My Profile</button>
    </div>
  </div>
</form>
</main>
</body>
</html>
