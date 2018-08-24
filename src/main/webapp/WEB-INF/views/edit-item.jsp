<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Update Item</h1>
	<form action="/add-submit2" method="post"> 
		 <input value= ${ id } type="hidden" name="id">
		<p>Item Name: <input name="name" ></p>
		<p>Item Description: <input type="text" name="description" min="3" max="200"></p>
		<p>Item Quantity (1-100): <input type="number" name="quantity" min="1" max="100"></p>
		<p>Item Price: <input type="number" name="price" min="1" max="100"></p>	
		<button>Save</button>
	</form>
	<a href="/admin" class="button">Cancel</a>
</body>
</html>