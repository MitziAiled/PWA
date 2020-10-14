<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Reporte</title>
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
		<br>
		<%
			HttpSession sesion = request.getSession(); 
			String usuario;
			String rol;
			
			if(sesion.getAttribute("user")!=null && sesion.getAttribute("rol")!=null){
				usuario = sesion.getAttribute("user").toString(); 
				rol = sesion.getAttribute("rol").toString();
				out.print("<a href='login.jsp?cerrar=true'>Cerrar sesion</a>");
			}else{
				out.print("<script>location.replace('login.jsp');</script>");
			}
		%>
		<%  
			String clavemaestro=request.getParameter("clavemaestro");
			request.setAttribute("clavemaestro", clavemaestro);
			List<reporte> list = reporteDAO.getAllInformation(Integer.parseInt(clavemaestro));  
			request.setAttribute("list",list); 
		%>
			<table border=1>
				<tr>
					<td>Nombre del Maestro: </td>
					<td>${list[0].getMaestro()}</td>
				</tr>
				<tr>
					<td>Clave del maestro: </td>
					<td>${list[0].getClavemaestro()}</td>
				</tr>
			</table>
			<br><br>
			<table border=1>
				<tr>
					<td>Clave Materia</td>
					<td>Materia</td>
					<td>Grupo</td>
					<td>Salon</td>
					<td>Alumnos</td>
					<td>Clave Carrera</td>
					<td>Semestre</td>
					<td>Lunes</td>
					<td>Martes</td>
					<td>Miercoles</td>
					<td>Jueves</td>
					<td>Viernes</td>
					<td>HT</td>
					<td>HP</td>
					<td>Creditos</td>
				</tr>
				<c:forEach items="${list}" var="report">
					 	<tr>
					 		<td>${report.getClavemateria()}</td>
					 		<td>${report.getMateria()}</td>
					 		<td>${report.getGrupo()}</td>
					 		<td>${report.getSalon()}</td>
					 		<td>${report.getAlumnos()}</td>
					 		<td>${report.getClavecarrera()}</td>
					 		<td>${report.getSemestre()}</td>
					 		<td>${report.getLunes()}</td>
					 		<td>${report.getMartes()}</td>
					 		<td>${report.getMiercoles()}</td>
					 		<td>${report.getJueves()}</td>
					 		<td>${report.getViernes()}</td>
					 		<td>${report.getHorast()}</td>
					 		<td>${report.getHorasp()}</td>
					 		<td>${report.getCreditos()}</td>
					 	</tr>
				 	</c:forEach>
			</table>
		<a href="verreporte.jsp">Volver</a>
	</body>
</html>