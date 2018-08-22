<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/style.css"/>
<head>
<meta charset="UTF-8">
<title>Welcome to The Coffee Shop</title>
<h1>Welcome to the Coffee Shop!</h1>
<h1><img src="/images/images.jpeg"/></h1>
</head>
<body>

<p>Join our customer rewards program by creating a profile.</p>
<p>It's quick and easy, plus you get a free cup of coffee on your next visit!</p>
<p>Click to <a href= "/coffeeshop-form">Register</a></p>
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
</body>
</html>