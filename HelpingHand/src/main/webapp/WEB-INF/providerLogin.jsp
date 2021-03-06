<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
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
						<a class="nav-link active" aria-current="page" href="home.do">Home</a>
						<!-- <a
						class="nav-link" href="pantry.do">Pantry</a> -->
						<a class="nav-link" href="signin.do">Login</a>
						<!-- <a class="nav-link disabled">Disabled</a> -->
					</div>
				</div>
			</div>
	</nav>
	
<div class="page">
	Welcome ${user.username}
	<br>
	<center>
		<h3>Find Our Pantry's Appointments:</h3>
		<form action="appointments.do" method="post">
			<input class="btn info" class="btn info" type="submit" />
		</form></center>
<br>
		<center><h3>Show Inventory Short Stock:</h3>
		<form action="short.do">
			<center><input class="btn info" class="btn info" type="submit" />
		</form></center>
<br>
		<center><h3>Refill Inventory Item:</h3>
		<form action="refill.do">
			<input class="btn info" class="btn info" type="submit" />
		</form></center>
<br>
		<c:if test="${not empty appointments}">
			<center><h3>Show This Pantry's Appointments:</h3>
			<table>
				<tr>
					<th>Name</th>
					<th>Appointment Time</th>
				</tr>
				<c:forEach var="app" items="${appointments}">
					<tr>
						<td>${sessionScope.user.firstName}</td>
						<td>${app.appointmentDate}</td>
					</tr>
				</c:forEach>
			</table></center>
		</c:if>
</div>
		<center><img src="https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2021%2F04%2F12%2FGettyImages-1253294428-2000.jpg" width="800" height="500"></center>
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