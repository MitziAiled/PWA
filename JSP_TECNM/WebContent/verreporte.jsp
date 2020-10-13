<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style>
			#menu{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<div id="menu">
				<a href="vermateria.jsp">MATERIAS</a>        |     
				<a href="versabana.jsp">SABANA</a>        |     
				<a href="verreporte.jsp">REPORTES</a>
		</div>  
		<img src="http://capacitacion.itleon.edu.mx/imagen/BANNER.jpeg">
		<h1>REPORTES DE MAESTROS:</h1>
		<table border="1" width="90%">
			<tr>
				<th>MAESTRO</th>
				<th>REPORTE</th>
			</tr>
			<tr>
				<th></th>
				<th><a href="reporte.jsp?id=${u.getId()}">Ver</a></th>
			</tr>
		</table>
	</body>
</html>