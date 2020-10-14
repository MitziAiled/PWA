<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mi Reporte</title>
</head>
<body>
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
		<h1>REPORTE:</h1>
		<%  
		String uss=request.getParameter("usuario");
		request.setAttribute("usuario", uss);
		List<reporte> list = reporteDAO.getAllTeacher(uss);  
		request.setAttribute("list",list);  
		%>
		<br>
			<br>
			<table border=1>
				<tr>
					<td>Nombre del Maestro: </td>
					<td>${list[0].getMaestro()}</td>
				</tr>
		</table>
</body>
</html>