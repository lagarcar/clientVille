
<%@page import="javax.websocket.Session"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="com.blo.Ville"%>
<%@ page import="org.springframework.web.client.RestTemplate"%>
<%@ page import="com.blo.Villes"%>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css"
	media="screen,projection">
<link rel="stylesheet" type="text/css"
	href="index.css" media="screen,projection">
</head>
<body>
	
	<div class="title">
	<h2> sélectionnez 2 villes dans les listes déroulantes</h2>
	</div>
	<div class="rectangle"></div>
	
	<%
		RestTemplate restTemplate = new RestTemplate();
		Ville[] villes = restTemplate.getForObject("http://localhost:8080/test?value=ville", Ville[].class);
		String[] noms = new String[villes.length];
		HttpSession session2 = request.getSession();
		session.setAttribute("villes", villes);

		for (int i = 0; i < villes.length; i++) {
			noms[i] = villes[i].getNom_commune();
		}
	%>

	
	
	<form action="ActionServlet" method= "GET">
	<div class="ville1">
	<select name="ville1">
		<%
			for (int i = 0; i < noms.length; i++) {
				out.println("ici");
		%>
		<option value=<%out.println(noms[i]);%>>
			<%
				out.println(noms[i]);
			%>
		</option>
		<%
			}
		%>
	</select>
	</div>
	
	<div class="ville2">
	<select name="ville2">
		<%
			for (int i = 0; i < noms.length; i++) {
				out.println("ici");
		%>
		<option value=<%out.println(noms[i]);%>>
			<%
				out.println(noms[i]);
			%>
		</option>
		<%
			}
		%>
	</select>
	</div>
	
	<div class="valider">
	<input class="btn btn-primary btn" type="submit" value="valider">
	</form>
	</div>
	


</body>
</html>