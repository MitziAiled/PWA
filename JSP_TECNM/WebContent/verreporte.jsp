<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
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
		List<reporte> list = reporteDAO.getAllTeacher();  
		request.setAttribute("list",list);  
		%>
		<h1>REPORTES DE MAESTROS:</h1>
		<table border="1" width="90%">
			<tr>
				<th>CLAVE MAESTRO</th>	
				<th>MAESTRO</th>
				<th>REPORTE</th>
			</tr>
			<tr>
				<c:forEach items="${list}" var="r">  
				<tr>
					<td>${r.getClavemaestro()}</td>
					<td>${r.getMaestro()}</td> 
					<td><a href="formularioreporte.jsp?id=${u.getClavemaestro()}">Ver reporte</a></td>
				</tr>  
			</c:forEach> 
			</tr>
		</table>
	</body>
</html>