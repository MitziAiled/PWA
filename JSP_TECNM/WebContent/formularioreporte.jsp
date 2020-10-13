<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Reporte</title>
		<style>
			h3, #menu{
				text-align: center;
			}
		</style>
	</head>
	<body>
		<img src="http://capacitacion.itleon.edu.mx/imagen/BANNER.jpeg">
		<h3>INSTITUTO TECNOLÓGICO DE LÉON</h3>
		<h3>DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN</h3>
		<h3>PROGRAMACIÓN DE AGOSTO A DICIEMBRE DEL 2020</h3>
		<%   
			reporte r=reporteDAO.getRecordByClavemaestro("clavemaestro");  
		%>
		<table border=1>
			<tr>
				<th>Nombre del Maestro:</th>
				<td><input type="text" name="clave" value="<%= r.getClavemaestro()%> readonly"/></td>
			</tr>
			<tr>
				<th>Clave del Maestro:</th>
				<td><input type="text" name="clave" value="<%= r.getMaestro()%> readonly"/></td>
			</tr>
		</table>
		<br><br>
		<table border=1>
			<tr>
				<th>No.</th>
				<th>Clave del grupo</th>
				<th>Clave de materia</th>
				<th>Nombre de la materia</th>
				<th>Grupo</th>
				<th>Aula</th>
				<th>No. Alumnos</th>
				<th>Carrera Plan</th>
				<th>Semestre</th>
				<th>Lunes</th>
				<th>Martes</th>
				<th>Miercoles</th>
				<th>Jueves</th>
				<th>Viernes</th>
				<th>HT</th>
				<th>HP</th>
				<th>Creditos</th>
			</tr>
		</table>
	</body>
</html>