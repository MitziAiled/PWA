<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Sabana</title>
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
		<h1>SABANA DE MATERIAS:</h1>
		<%  
		List<sabana> list = sabanaDAO.getAllSabana();
		request.setAttribute("list",list);  
		%>  
		  
		<table border="1" width="90%">  
			<tr>
				<th>Id</th>
				<th>ClaveHorario</th>
				<th>ClaveMateria</th>
				<th>ClaveCarrera</th>  
				<th>Materia</th>
				<th>Carrera</th>
				<th>Maestro</th>
				<th>Periodo</th>
				<th>Turno</th>
				<th>Grupo</th>
				<th>NumAlumnos</th>
				<th>Semestre</th>
				<th>Creditos</th>
				<th>Lunes</th>
				<th>Martes</th>
				<th>Miercoles</th>
				<th>Jueves</th>
				<th>Viernes</th>
				<th>Salon</th>
			</tr>  
			<c:forEach items="${list}" var="s">  
				<tr>
					<td>${s.getId()}</td>
					<td>${s.getClavehorario()}</td>
					<td>${s.getClavemateria()}</td>
					<td>${s.getClavecarrera()}</td>
					<td>${s.getMateria()}</td>
					<td>${s.getCarrera()}</td>
					<td>${s.getMaestro()}</td>
					<td>${s.getPeriodo()}</td>
					<td>${s.getTurno()}</td>
					<td>${s.getGrupo()}</td>
					<td>${s.getAlumnos()}</td>
					<td>${s.getSemestre()}</td>
					<td>${s.getCreditos()}</td>
					<td>${s.getLunes()}</td>
					<td>${s.getMartes()}</td>
					<td>${s.getMiercoles()}</td>
					<td>${s.getJueves()}</td>
					<td>${s.getViernes()}</td>
					<td>${s.getSalon()}</td>
				</tr>  
			</c:forEach>  
		</table>
	</body>
</html>