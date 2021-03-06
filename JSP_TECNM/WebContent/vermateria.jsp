<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Vista de Materias</title>  
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
		<h1>Lista de Materias</h1>
		<a href="formulariomateria.jsp">Agregar una Materia</a>  
		  
		<%  
		List<materia> list = materiaDAO.getAllRecords();  
		request.setAttribute("list",list);  
		%>  
		  
		<table border="1" width="90%">  
			<tr>
				<th>Id</th>
				<th>Clave de Materia</th>
				<th>Nombre</th>
				<th>Semestre</th>  
				<th>Carrera</th>
				<th>Creditos</th>
				<th>Horas Te�ricas</th>
				<th>Horas Practicas</th>
				<th>Editar</th>
				<th>Eliminar</th>
			</tr>  
			<c:forEach items="${list}" var="u">  
				<tr>
					<td>${u.getId()}</td>
					<td>${u.getClave()}</td>
					<td>${u.getNombre()}</td>  
					<td>${u.getSemestre()}</td>
					<td>${u.getCarrera()}</td>
					<td>${u.getCreditos()}</td>
					<td>${u.getHorast()}</td>
					<td>${u.getHorasp()}</td>  
					<td><a href="formeditarmateria.jsp?id=${u.getId()}">Editar</a></td>  
					<td><a href="borrarmateria.jsp?id=${u.getId()}">Eliminar</a></td>
				</tr>  
			</c:forEach>  
		</table>  
		<br/>  
	</body>  
</html>