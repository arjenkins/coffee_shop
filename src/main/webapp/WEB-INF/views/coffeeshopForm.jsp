<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css"/>
<head>
<meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>User Registration Profile</title>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
<link rel="stylesheet" href="/style.css"/>
</head>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">The Coffee Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/">Home</a></li>
      <li><a href="/admin">Admin</a></li>
      <li><a href="/">Shop</a></li>
      <li><a href="/coffeeshop-form">Reward Club</a></li>
    </ul>
  </div>
</nav>
<body>
<main class="container">
<h1>Welcome to The Coffee Shop!</h1>
<h2>Create Customer Account</h2>
<h1><img src="/images/images.jpeg"/></h1>
<form action= "/coffeeshop-summary" method="post">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<p>Please fill out the form to register your profile in our reward club.</p>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="First Name" name="firstname" required minlength = "2" maxlength = "10"/>
      <input type="text" class="form-control" placeholder="Email" name="email" required/>
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Last Name" name="lastname" required minlength = "2" maxlength = "10"/>
      <input type="text" class="form-control" placeholder="Phone Number" name="phonenumber" required pattern="[0-9}{3}{0-9}{3}[0-9}{4}"/>
      <input type="text" class="form-control" placeholder="Password" name="password" required/>
      <br>
      <button type="Register My Profile" class="btn btn-primary mb-2">Register My Profile</button>
    </div>
  </div>
</form>
</main> 
</body>
</html>
