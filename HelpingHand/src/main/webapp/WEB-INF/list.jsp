<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Your Order</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">

<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
 <link rel="stylesheet" type="text/css" href="css/home.css">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Helping Hand</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="home.do">Home</a> <!-- <a
						class="nav-link" href="pantry.do">Pantry</a>  --><a class="nav-link"
						href="signin.do">Login</a>
					<!-- <a class="nav-link disabled">Disabled</a> -->
				</div>
				</div>
				</div>
				</nav>

<div class="page" >

	<center><h2>Show List:</h2></center>
<c:choose>
	<c:when test="${empty list}">
		The List Is Empty!
	</c:when>
	<c:otherwise>	
	<center><table>
		<tr>
			<th>Item Id:</th>
			<th>Name:</th>
			<th>Operation:</th>
		</tr>
		<c:forEach var="i" items="${list}">
		<tr>
			<td>${i.id}</td>
			<td>${i.inventory.name}</td>
			<td>
				<form action="addToCart.do" method="post">
 				<input type="hidden" name="inventoryItemId" value="${i.id}"/>
 				<input class="btn info" type="submit" value="Add To Cart" />
 				</form>
			</td>
		</tr>
		</c:forEach>
	</table></center>
	</c:otherwise>
</c:choose>	
 	<hr/>
 	<center><img src= "https://st4.depositphotos.com/10614052/i/600/depositphotos_198302598-stock-photo-paper-bag-fresh-fruits-vegetables.jpg"width="450" height="400"></center>
 	<center><h3>Show the order:</h3>
 	<form action="showOrder.do" method="get">
 		<input class="btn info" type="submit" value="Items in Cart" />
 	</form></center>
 	
 	<br/>
	<center><form action="backRecipient.do" method="get">
		<input class="btn info" type="submit" value="Back To Recipient" />
	</form>
	</div></center>

	<br />
	<center><form action="home.do" method="get">
		<input class="btn info" type="submit" value="Back To Home" />
	</form></center>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>