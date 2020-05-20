<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Famous Pizzas</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<style>
body {
  background-image: url('/images/whyte-c.gif');
}
div {
  background-color: white;
  opacity: .75;
}
</style>

<body>
	
	<div class="container">
		<img alt="pizza" src="/images/supreme.png" width="25%">
	</div>
	
	<div class="container">
		<h3>${pizzaType}</h3>
		<h4>PRICE:</h4>
		<h5><fmt:formatNumber value="${price}" type="number" pattern="$#,###.##"/></h5>
		<h3><a href="/">Home</a></h3>
	</div>

</body>
</html>