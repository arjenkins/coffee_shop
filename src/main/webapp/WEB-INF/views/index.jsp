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
<meta charset="UTF-8">
<title>Welcome to The Coffee Shop</title>
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

<div class="container-fluid">
<h1>Welcome to the Coffee Shop!</h1>
<h1><img src="/images/images.jpeg"/></h1>
</div>

<br>
<br>
<br>
<br>
<br>


<div align="center">
<p>Join our customer rewards program by creating a profile.</p>
<p>It's quick and easy, plus you get a free cup of coffee on your next visit!</p>
<a class="btn btn-primary" href="/coffeeshop-form" role="button">Register</a>
</div>

<br>
<br>
<br>
<br>
<br>
	<div class="container">
		<h1>Items for Sale</h1>
		<table class="table">
			<thread>
				<tr>
					<th>Items</th><th>Description</th><th>Quantity</th><th>Price</th>
				</tr>
			</thread>
			<tbody>
			<c:forEach var="item" items="${ items }">
				<tr>
					<td>${item.name}</td>
					<td>${item.description}</td>
					<td>${item.quantity }</td>
					<td>${item.price }</td>
				</tr>
				</c:forEach>
			</tbody>	
</table>
</div>
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
</body>
</html>