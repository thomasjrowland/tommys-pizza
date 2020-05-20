<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Review</title>
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

	<h1>Leave us a Review</h1>
	
	<form action="/">
		<p>
			<label>Name:</label>
			<input type="text" name="commentName">
		</p>
		
		<p>
			<label>Comment:</label>
			<textarea name="message" rows="10" cols="30">
			</textarea>
		</p>
		
		<input type="radio" id="1" name="1" value="1">
  			<label for="1">1 (Worst)</label><br>
  		<input type="radio" id="2" name="2" value="2">
  			<label for="2">2</label><br>
  		<input type="radio" id="3" name="3" value="3">
  			<label for="3">3</label><br>
  		<input type="radio" id="4" name="4" value="4">
  			<label for="4">4</label><br>
  		<input type="radio" id="5" name="5" value="5">
  			<label for="5">5 (Best)</label><br>  		
  		
  		<input type="submit" value="Submit">
	
	</form>
	
	<p><a href="/">Home</a></p>

</body>
</html>