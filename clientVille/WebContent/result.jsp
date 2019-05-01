
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="result.css" media="screen,projection">
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css"
	media="screen,projection">
<title>Insert title here</title>
	<%
		double distance = (double) session.getAttribute("distance");


	%>
</head>
<body>
	<div class="rectangle"></div>
	
	<div class="result">
	<h3> la distance à vol d'oiseau entre les 2 villes est de <%=distance %> Km</h3>
	</div>
		<div class="accueil">
	<form action="accueil.html">
    <input type="submit" class="btn btn-primary btn-lg" value="accueil">
	</form>
	</div>
</body>
</html>