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
<title>Administration Page</title>
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
<div class="container">
		<h1>Administration Panel</h1>
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
					<td><a href="/edit-item/${ item.id }" >Edit Item</a></td>
					<td><a href="/delete-item/${ item.id }"onclick="return confirm('Are you sure?')">Delete Item </a></td>
				</tr>
				</c:forEach>
			</tbody>	
</table>
</div>
<a class="btn btn-primary" href="/add-item" role="button">Add New Item</a>
</body>
</html>