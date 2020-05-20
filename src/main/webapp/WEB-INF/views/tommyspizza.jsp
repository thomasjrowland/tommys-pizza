<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tommy's Pizza</title>
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
	
		<img alt="tommy's pizza logo" src="/images/evilpizza.png" width="45%">
	
	
	<div class="container">
		<h1>Welcome to Tommy's Pizza</h1>
	
		<h2>Try a specialty pizza!</h2>	
			
			<ul>
				<li>
					<h3><a href="/specialtypizza?sp=sp1">Tommy's Supreme</a></h3>
				</li>
				<li>
					<h3><a href="/specialtypizza?sp=sp2">Tommy's Chili Extreme</a></h3>	
				</li>
				<li>
					<h3><a href="/specialtypizza?sp=sp3">Tommy's Fiesta Pie</a></h3>	
				</li>
			</ul>
		
		<h2>
			<a href="custompizza">Build your own pizza!</a>
		</h2>
		
		<h2>
			<a href="review">Leave us a review</a>
		</h2>
	</div>	
	
	
	
	
</body>
</html>