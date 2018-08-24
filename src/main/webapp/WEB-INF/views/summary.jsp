<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/style.css"/>
<head>
<meta charset="UTF-8">
<title>Thank you for registering at The Coffee Shop!</title>
<h1>The Coffee Shop</h1>
<h1><img src="/images/images.jpeg"/></h1>
</head>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">The Coffee Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
      <li><a href="/admin">Admin</a></li>
      <li><a href="#">Shop</a></li>
      <li><a href="/coffeeshop-form">Reward Club</a></li>
    </ul>
  </div>
</nav>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<p>Welcome, ${user.firstname} ${user.lastname }. Your profile has been registered.</p>
<p>You will receive your free coffee coupon via email within 12-24 hours.</p>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<a href="/">Home</a>
</body>
</html>