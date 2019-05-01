<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="com.blo.Ville"%>
<%@ page import="org.springframework.web.client.RestTemplate"%>
<%@ page import="com.blo.Villes"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css"
	media="screen,projection">
<link rel="stylesheet" type="text/css"
	href="dataTables.bootstrap.min.css" media="screen,projection">
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="voirVille.css" media="screen,projection"> -->
<script src="jquery-3.4.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="jquery.dataTables.min.js"></script>
<script src="dataTables.bootstrap.min.js"></script>
<script src="pagination.js"></script>
<script src = "getInfo.js"></script>



<title>Insert title here</title>
</head>
<body>
	<%
		RestTemplate restTemplate = new RestTemplate();
		Ville[] villes = restTemplate.getForObject("http://localhost:8080/test?value=ville", Ville[].class);
		String[] noms = new String[villes.length];
		String[] codesInsee = new String[villes.length];
		String[] codePostaux = new String[villes.length];
		String[] libelles = new String[villes.length];
		String[] lignes5 = new String[villes.length];
		String[] latitudes = new String[villes.length];
		String[] longitudes = new String[villes.length];
		HttpSession session2 = request.getSession();
		session.setAttribute("villes", villes);

		for (int i = 0; i < villes.length; i++) {
			noms[i] = villes[i].getNom_commune();
			codesInsee[i] = villes[i].getCode_communne_insee();
			codePostaux[i] = villes[i].getCode_postal();
			libelles[i] = villes[i].getLibelle_acheminement();
			lignes5[i] = villes[i].getLigne_5();
			latitudes[i] = villes[i].getLatitude();
			longitudes[i] = villes[i].getLongitude();
		}
	%>




	<div class="col-md-12">
		<table id="example"
			class='table table-striped table-bordered table-sm'>

			<thead>
				<tr>
					<th>Code_Commune_Insee</th>
					<th>nom_Commune</th>
					<th>Code_Postal</th>
					<th>libelle_acheminement</th>
					<th>ligne_5</th>
					<th>latitude</th>
					<th>longitude</th>
				</tr>
			</thead>

			<tbody>
				<%
					for (int i = 0; i < villes.length; i++) {
						out.print("<tr onclick=\"toolnote(this)\">");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + codesInsee[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + noms[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + codePostaux[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + libelles[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + lignes5[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + latitudes[i] + "</td>");
						out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + longitudes[i] + "</td>");
						out.print("</tr>");
					}
				%>
			</tbody>
		</table>
	</div>
	<div class = "valider">
	<form action = "AfficherServlet">
		<input type="hidden" id="codeInsee" name = "codeInsee" value="" />
		<input type="hidden" id="nomCommune" name = "nomCommune" value="" />
		<input type="hidden" id="codePostal" name = "codePostal" value="" />
		<input type="hidden" id="libelles" name = "libelles" value="" />
		<input type="hidden" id="ligne5" name = "ligne5" value="" />
		<input type="hidden" id="latitude" name = "latitude" value="" />
		<input type="hidden" id="longitude" name = "longitude" value="" />
		<input type="submit" class="btn btn-primary btn-lg" id="valider" value = "valider"/>
	</form>
	</div>
	</br>
	</br>
	<div class="accueil">
	<form action="accueil.html">
    <input type="submit" class="btn btn-primary btn-lg" value="accueil">
	</form>
	</div>
</body>


</html>