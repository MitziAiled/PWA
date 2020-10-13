<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido</title>
<style>
	img{
		display:block;
		margin:auto;
	}
	#menu,h1,h3{
		text-align:center;
	}	
</style>
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
	
	<h1>B I E N V E N I D O</h1>
	<h3>Menú Principal</h3>
	<div id="menu">
		<a href="vermateria.jsp">MATERIAS</a>        |     
		<a href="versabana.jsp">SABANA</a>        |     
		<a href="verreporte.jsp">REPORTES</a>
	</div>
</body>
</html>