<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!--     <link rel="stylesheet" href="dataTables.bootstrap.min.css"> -->
<!--  	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css" href="bootstrap.min.css"
	media="screen,projection">
<link rel="stylesheet" type="text/css"
	href="dataTables.bootstrap.min.css" media="screen,projection">
<script src="jquery-3.4.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="jquery.dataTables.min.js"></script>
<script src="dataTables.bootstrap.min.js"></script>
<script src="pagination.js"></script>
<script src = "getInfo.js"></script>
</head>
<body>
	<!-- Editable table -->
	<h3
		class="card-header text-center font-weight-bold text-uppercase py-4">Editable
		table</h3>
	<table id="example"
		class="table table-bordered table-responsive-md table-striped text-center">
		<thead>
			<tr>
				<th>Name</th>
				<th>Position</th>
				<th>Office</th>
				<th>Age</th>
				<th>Start date</th>
				<th>Salary</th>
			</tr>
		</thead>
		<%
		for (int i = 0; i < 5; i++) {
			out.print("<tr onclick=\"toolnote(this)\">");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "jojo" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "joseph" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "jotaro" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "josuke" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "giorno" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "speedwagon" + "</td>");
			out.print("<td class=\"pt-3-half\" contenteditable=\"true\">" + "polnareff" + "</td>");
			out.print("</tr>");
		}
		
		%>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
			<td class="pt-3-half" contenteditable="true">45</td>
			<td class="pt-3-half" contenteditable="true">Insectus</td>
			<td class="pt-3-half" contenteditable="true">USA</td>
			<td class="pt-3-half" contenteditable="true">San Francisco</td>
    </td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guadalupe House</td>
			<td class="pt-3-half" contenteditable="true">26</td>
			<td class="pt-3-half" contenteditable="true">Isotronic</td>
			<td class="pt-3-half" contenteditable="true">Germany</td>
			<td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr class="hide">
			<td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
			<td class="pt-3-half" contenteditable="true">31</td>
			<td class="pt-3-half" contenteditable="true">Portica</td>
			<td class="pt-3-half" contenteditable="true">United Kingdom</td>
			<td class="pt-3-half" contenteditable="true">London</td>
		</tr>
		<tr>
			<td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
			<td class="pt-3-half" contenteditable="true">30</td>
			<td class="pt-3-half" contenteditable="true">Deepends</td>
			<td class="pt-3-half" contenteditable="true">Spain</td>
			<td class="pt-3-half" contenteditable="true">Madrid</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
			<td class="pt-3-half" contenteditable="true">45</td>
			<td class="pt-3-half" contenteditable="true">Insectus</td>
			<td class="pt-3-half" contenteditable="true">USA</td>
			<td class="pt-3-half" contenteditable="true">San Francisco</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guadalupe House</td>
			<td class="pt-3-half" contenteditable="true">26</td>
			<td class="pt-3-half" contenteditable="true">Isotronic</td>
			<td class="pt-3-half" contenteditable="true">Germany</td>
			<td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr class="hide">
			<td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
			<td class="pt-3-half" contenteditable="true">31</td>
			<td class="pt-3-half" contenteditable="true">Portica</td>
			<td class="pt-3-half" contenteditable="true">United Kingdom</td>
			<td class="pt-3-half" contenteditable="true">London</td>
		</tr>
		<tr>
			<td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
			<td class="pt-3-half" contenteditable="true">30</td>
			<td class="pt-3-half" contenteditable="true">Deepends</td>
			<td class="pt-3-half" contenteditable="true">Spain</td>
			<td class="pt-3-half" contenteditable="true">Madrid</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
			<td class="pt-3-half" contenteditable="true">45</td>
			<td class="pt-3-half" contenteditable="true">Insectus</td>
			<td class="pt-3-half" contenteditable="true">USA</td>
			<td class="pt-3-half" contenteditable="true">San Francisco</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guadalupe House</td>
			<td class="pt-3-half" contenteditable="true">26</td>
			<td class="pt-3-half" contenteditable="true">Isotronic</td>
			<td class="pt-3-half" contenteditable="true">Germany</td>
			<td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr class="hide">
			<td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
			<td class="pt-3-half" contenteditable="true">31</td>
			<td class="pt-3-half" contenteditable="true">Portica</td>
			<td class="pt-3-half" contenteditable="true">United Kingdom</td>
			<td class="pt-3-half" contenteditable="true">London</td>
		</tr>
		<tr>
			<td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
			<td class="pt-3-half" contenteditable="true">30</td>
			<td class="pt-3-half" contenteditable="true">Deepends</td>
			<td class="pt-3-half" contenteditable="true">Spain</td>
			<td class="pt-3-half" contenteditable="true">Madrid</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
			<td class="pt-3-half" contenteditable="true">45</td>
			<td class="pt-3-half" contenteditable="true">Insectus</td>
			<td class="pt-3-half" contenteditable="true">USA</td>
			<td class="pt-3-half" contenteditable="true">San Francisco</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guadalupe House</td>
			<td class="pt-3-half" contenteditable="true">26</td>
			<td class="pt-3-half" contenteditable="true">Isotronic</td>
			<td class="pt-3-half" contenteditable="true">Germany</td>
			<td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr class="hide">
			<td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
			<td class="pt-3-half" contenteditable="true">31</td>
			<td class="pt-3-half" contenteditable="true">Portica</td>
			<td class="pt-3-half" contenteditable="true">United Kingdom</td>
			<td class="pt-3-half" contenteditable="true">London</td>
		</tr>
		<tr>
			<td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
			<td class="pt-3-half" contenteditable="true">30</td>
			<td class="pt-3-half" contenteditable="true">Deepends</td>
			<td class="pt-3-half" contenteditable="true">Spain</td>
			<td class="pt-3-half" contenteditable="true">Madrid</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
			<td class="pt-3-half" contenteditable="true">45</td>
			<td class="pt-3-half" contenteditable="true">Insectus</td>
			<td class="pt-3-half" contenteditable="true">USA</td>
			<td class="pt-3-half" contenteditable="true">San Francisco</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr>
			<td class="pt-3-half" contenteditable="true">Guadalupe House</td>
			<td class="pt-3-half" contenteditable="true">26</td>
			<td class="pt-3-half" contenteditable="true">Isotronic</td>
			<td class="pt-3-half" contenteditable="true">Germany</td>
			<td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
		</tr>
		<!-- This is our clonable table line -->
		<tr class="hide">
			<td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
			<td class="pt-3-half" contenteditable="true">31</td>
			<td class="pt-3-half" contenteditable="true">Portica</td>
			<td class="pt-3-half" contenteditable="true">United Kingdom</td>
			<td class="pt-3-half" contenteditable="true">London</td>
		</tr>
	</table>
	<!-- Editable table -->
	
	<form action = "AfficherServlet">
		<input type="hidden" id="name" name = "name" value="" />
		<input type="hidden" id="position" name = "position" value="" />
		
		<input type="submit" id="valider" value = "valider"/>
	</form>
</body>
</html>