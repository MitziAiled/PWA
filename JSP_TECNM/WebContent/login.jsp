<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="true" %>
<%@ page import="paquete.conexion" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TECNM</title>
<style type="text/css">
	body{
		text-align: center;
		background: url(https://img.freepik.com/foto-gratis/estudiantes-posando-coworking-blanco_23-2147666694.jpg?size=626&ext=jpg) no-repeat center center fixed;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover; 
	}
</style>
</head>
<body>
	<a href="login.jsp">Login</a>        |     
	<a href="logout.jsp">Logout</a>        |     
	<a href="profile.jsp">Perfil</a>
	<br>
	<img src="http://capacitacion.itleon.edu.mx/imagen/BANNER.jpeg">
	<h1>APLICACIÓN WEB CON JSP</h1>
	<h4>Inicia sesión para ingresar al sistema</h4>
	<form action="login.jsp" method="post">
		<label>Nombre de Usuario: </label>
	    <input type="text" name="txtusuario" id="usuario">
	    <br><br>
		<label>Contraseña: </label>
	    <input type="password" name="txtcontrasena" id="contrasena">
	    <br><br><br>
	    <input type="submit" value="Ingresar" name="ingresar" >
	</form>
	<%
		conexion c = new conexion();
	
		if(request.getParameter("ingresar")!=null){
			String nombre = request.getParameter("txtusuario");
			String contra = request.getParameter("txtcontrasena");
			
			HttpSession sesion = request.getSession();
			
			switch(c.loguear(nombre, contra)){
				case 1:
					sesion.setAttribute("user", nombre);
					sesion.setAttribute("rol", 1);
					response.sendRedirect("jefe.jsp");
					break;
				case 2:
					sesion.setAttribute("user", nombre);
					sesion.setAttribute("rol", 2);
					response.sendRedirect("maestro.jsp");
					break;
				default:
					out.write("Usuario o contraseña invalido!");
					break;
			}
		}
		
		if(request.getParameter("cerrar")!=null){
			session.invalidate();
		}
	%>
</body>
</html>