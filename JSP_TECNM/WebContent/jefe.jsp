<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	img{
		display:block;
		margin:auto;
	}
	#carrera{
		width: 250px;
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
	
	<h1>Agregar Nueva Materia</h1>  
		<form action="agregarmateria.jsp" method="post">  
		<table>  
			<tr>
				<td>Clave Horario:</td>
				<td><input type="text" name="clhorario"/></td>
				<td>Clave Materia:</td>
				<td><input type="text" name="clmateria"/></td>
				<td>Clave Carrera:</td>
				<td><input type="text" name="clcarrera" value="ISX" readonly/></td>
			</tr>  
			<tr>
				<td>Materia:</td>
				<td><input type="text" name="materia"/></td>
				<td>Carrera:</td>
				<td colspan="2"><input type="text" name="carrera" id="carrera" value="Ingenieria en Sistemas Computacionales" readonly/></td> 
			<tr>
				<td>Nombre del Maestro:</td>
				<td><input type="text" name="maestro"/></td>
				<td>Periodo:</td>
				<td><input type="text" name="periodo"/></td>
				<td>Turno:</td>
				<td><input type="text" name="turno"/></td>
			</tr>
			<tr>
				<td>Grupo:</td>
				<td><input type="text" name="grupo"/></td>
				<td>No. de Alumnos:</td>
				<td><input type="text" name="noalumnos"/></td>
				<td>Semestre:</td>
				<td><input type="text" name="semestre"/></td>
			</tr>
			<tr>
				<td>Creditos:</td>
				<td><input type="text" name="creditos"/></td>
				<td>Horas Teóricas:</td>
				<td><input type="text" name="ht"/></td>
				<td>Horas Practicas:</td>
				<td><input type="text" name="hp"/></td>
			</tr>
			<tr>
				<td>Lunes:</td>
				<td><input type="text" name="lunes"/></td>
				<td>Salón del Lunes:</td>
				<td><input type="text" name="salonlunes"/></td>
			</tr>
			<tr>
				<td>Martes:</td>
				<td><input type="text" name="martes"/></td>
				<td>Salon del Martes:</td>
				<td><input type="text" name="salonmartes"/></td>
			</tr>
			<tr>
				<td>Miércoles:</td>
				<td><input type="text" name="miercoles"/></td>
				<td>Salon del Miércoles:</td>
				<td><input type="text" name="salonmiercoles"/></td>
			</tr>
			<tr>
				<td>Jueves:</td>
				<td><input type="text" name="jueves"/></td>
				<td>Salon del Jueves:</td>
				<td><input type="text" name="salonjueves"/></td>
			</tr>
			<tr>
				<td>Viernes:</td>
				<td><input type="text" name="viernes"/></td>
				<td>Salon del Viernes:</td>
				<td><input type="text" name="salonviernes"/></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="Agregar Materia"/></td></tr>  
		</table>  
	</form> 
</body>
</html>